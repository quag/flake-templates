{
  description = "Quag Flake Templates";

  outputs = {self}: {
    templates = {
      python-script = rec {
        path = ./python-script;
        name = "pyproject Python Script Template";
        description = ''
          A basic pyproject based python script
        '';
        welcomeText = ''
          # ${name}
          ${description}

          Comes bundled with: python311

          Tip: replace every “template” with your project name. Specifically,

          1. in pyproject.toml edit the name = "template" and template = "template:main" lines,
          2. in flake.nix edit the pname = "template" line, and
          3. rename src/template.py to be your project name.

          To do this automatically run:
          ```
          bash rename-from-template-to-folder-name.sh
          ```
        '';
      };
    };
  };
}
