package env0

# METADATA
# title: Require Approval
# description: Returns pending if deploy from a comment or user
pending[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "comment"
  input.deploymentRequest.type = "deploy"
  count(input.approvers) < 1
}

# METADATA
# title: Allow if got approved
# description: Returns allow if comment with resume
allow[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "comment"
  input.deploymentRequest.type = "deployResume"
}


# METADATA
# title: Allow if got approved
# description: 2Returns allow if approvers are present for comment or user triggered deployments
allow[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "user"
}



format(meta) := meta.description
