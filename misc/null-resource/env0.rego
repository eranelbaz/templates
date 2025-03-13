package env0

# METADATA
# title: Require Approval
# description: Returns pending if deploy from a comment without approve
pending[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "comment"
  input.deploymentRequest.type = "deploy"
  count(input.approvers) < 1
}

# METADATA
# title: Allow if got approved
# description: Returns allow if approved and from comment
allow[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "comment"
  input.deploymentRequest.type = "deploy"
  count(input.approvers) >= 1
}


# METADATA
# title: Allow if got approved
# description: Returns allow if user triggered deployments
allow[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "user"
}



format(meta) := meta.description
