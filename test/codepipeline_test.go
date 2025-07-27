package test

import (
    "testing"
    "strings"

    "github.com/gruntwork-io/terratest/modules/aws"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func TestCodePipeline(t *testing.T) {
    t.Parallel()

    terraformOptions := &terraform.Options{
        TerraformDir: "../",

        Vars: map[string]interface{}{}, // if you have vars, add them here
    }

    terraform.InitAndApply(t, terraformOptions)
    defer terraform.Destroy(t, terraformOptions)

    region := "ap-south-1" // change if needed
    pipelineName := terraform.Output(t, terraformOptions, "codepipeline_name")

    output := aws.GetCodePipeline(t, pipelineName, region)
    assert.True(t, strings.Contains(*output.Name, "pipeline"))
}

