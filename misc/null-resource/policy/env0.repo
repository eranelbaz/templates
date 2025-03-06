package env0

# METADATA
# title: pending if lock file has changed
# description: require approval if .terraform.lock.hcl has changes
pending[format(rego.metadata.rule())] {
    input.policyData.changed == true
    count(input.approvers) == 0
}

# METADATA
# title: allow if approved
# description: allow after approval is given
allow[format(rego.metadata.rule())] {
    count(input.approvers) >= 1
}

# METADATA
# title: allow if no changes in lock file
# description: approve automatically if .terraform.lock.hcl has no changes
allow[format(rego.metadata.rule())] {
    input.policyData.changed == false
}

format(meta) := meta.description
