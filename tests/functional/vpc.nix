let
  region = "us-east-1";
in
{
  resources.vpc.vpc-nixops =
    {
      inherit region;
      instanceTenancy = "default";
      cidrBlock = "10.0.0.0/16";
      tags = {
        Source = "NixOps";
      };
    };
}
