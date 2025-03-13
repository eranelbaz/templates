package env0

# METADATA
# title: Require Approval
# description: Returns pending if deploy from a comment with no approvers
pending[format(rego.metadata.rule())] {
  input.deploymentRequest.triggerName = "comment"
  input.deploymentRequest.type = "deploy"
  count(input.approvers) < 1
}

# METADATA
# title: Allow if approved or not from a comment
# description: Returns allow if approvers are present for a comment deploy or auto approves if not from a comment
allow[format(rego.metadata.rule())] {
  # Allow if it's a comment trigger and there are approvers
  input.deploymentRequest.triggerName = "comment"
  input.deploymentRequest.type = "deploy"
  count(input.approvers) >= 1
} {
  # Auto approve if it's not a comment trigger
  input.deploymentRequest.triggerName != "comment"
}

format(meta) := meta.description
