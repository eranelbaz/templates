package env0

# METADATA
# title: Require Approval
# description: Returns pending if input.variabls.env0.ENV0_PR_SOURCE_BRANCH exists and no approvers are present
pending[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "comment"
  input.deploymentRequest.triggerName = "deploy"
  count(input.approvers) < 1
}

# METADATA
# title: Allow if got approved
# description: Returns allow if approvers are present
allow[format(rego.metadata.rule())] {
  count(input.approvers) >= 1
}

format(meta) := meta.description
