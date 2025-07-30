package test

import (
    "testing"
    "strings"

    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func TestCodePipeline(t *testing.T) {
    t.Parallel()

    terraformOptions := &terraform.Options{
        TerraformDir: "../", // adjust if needed
    }

    // Apply and clean up
    terraform.InitAndApply(t, terraformOptions)
    defer terraform.Destroy(t, terraformOptions)

    pipelineName := terraform.Output(t, terraformOptions, "codepipeline_name")

    // Assert pipelineName is not empty and contains "pipeline"
    assert.NotEmpty(t, pipelineName)
    assert.True(t, strings.Contains(pipelineName, "pipeline"))
}
