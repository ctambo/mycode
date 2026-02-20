terraform { 
  cloud { 
    
    organization = "TamboTest" 

    workspaces { 
      name = "my-example" 
    } 
  } 
}
