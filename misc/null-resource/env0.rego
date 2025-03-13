package env0

# METADATA
# title: Require Approval
# description: Returns pending if deploy from a comment with deploy
pending[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "comment"
  input.deploymentRequest.type = "deploy"
}

# METADATA
# title: Allow if got approved
# description: Returns allow if comment with resume
allow[format(rego.metadata.rule())] {

  input.deploymentRequest.type = "deployResume"
}


## METADATA
## title: Allow if got approved
## description: Return allow if user
#allow[format(rego.metadata.rule())] {
#  input.deploymentRequest.triggerName = "user"
#}



format(meta) := meta.description
