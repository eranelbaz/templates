package env0

# METADATA
# title: Require Approval
# description: Returns pending if deploy from a comment
pending[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "comment"
  input.deploymentRequest.type = "deploy"
  count(input.approvers) < 1
}

# METADATA
# title: Allow if got approved
# description: Returns allow if approvers are present
allow[format(rego.metadata.rule())] {
  count(input.approvers) >= 1
}

format(meta) := meta.description
