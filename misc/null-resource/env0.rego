package env0

import rego.v1

# METADATA
# title: Require Approval
# description: Returns pending if deploy from a comment and not approved
pending contains format(rego.metadata.rule()) if {
	input.deploymentRequest.triggerName = "comment"
	input.deploymentRequest.type = "deploy"
	count(input.approvers) < 1
}

# METADATA
# title: Allow if got approved
# description: Returns allow if approved and from comment
allow contains format(rego.metadata.rule()) if {
	input.deploymentRequest.triggerName = "comment"
	input.deploymentRequest.type = "deploy"
	count(input.approvers) >= 1
}

# METADATA
# title: Allow if got approved
# description: Returns allow if user action
allow contains format(rego.metadata.rule()) if {
	input.deploymentRequest.triggerName = "user"
}

format(meta) := meta.description
