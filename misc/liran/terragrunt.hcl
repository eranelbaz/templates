terraform {
    after_hook "clear" {
        commands = ["plan", "apply", "destroy"]
        execute = ["rm", "-rf", "--", "${get_terragrunt_dir()/.terragrunt-cache"]
        run_on_error = true
    }
}
