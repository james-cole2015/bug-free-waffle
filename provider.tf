terraform {
  cloud {
    organization = "friends_of_fate_903"

    workspaces {
      name = "new-test-workspace"
    }
  }
}