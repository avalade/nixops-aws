let

  configUS =
    { deployment.targetEnv = "ec2";
      deployment.ec2.zone = "us-east-1"; 
      deployment.ec2.instanceType = "m1.large";
      deployment.ec2.keyPair = "eelco";
      deployment.ec2.securityGroups = [ "eelco-test" ];
    };

  configEU =
    { deployment.targetEnv = "ec2";
      deployment.ec2.zone = "eu-west-1"; 
      deployment.ec2.instanceType = "m1.large";
      deployment.ec2.keyPair = "eelco";
      deployment.ec2.securityGroups = [ "eelco-test" ];
    };

in

{
  proxy = configUS;
  backend1 = configUS;
  backend2 = configEU;
}
