{
  description = "Aaron's flake templates";

  outputs = { self, ... }: {
    templates = {
      minimal = {
        path = ./minimal-template;
        description = "A minimal developer environment";
      };
    };
  };
}
