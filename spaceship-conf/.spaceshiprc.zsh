###
# https://spaceship-prompt.sh/config/intro/
###

SPACESHIP_SUDO_SHOW=true
SPACESHIP_USER_SHOW=true

SPACESHIP_PROMPT_ORDER=(
  # time           # Time stamps section
  user           # Username section
  dir            # Current directory section
  # host           # Hostname section
  git            # Git section (git_branch + git_status)
  # hg             # Mercurial section (hg_branch  + hg_status)
  package        # Package version
  node           # Node.js section
  # bun            # Bun section
  # deno           # Deno section
  # ruby           # Ruby section
  # python         # Python section
  # elm            # Elm section
  # elixir         # Elixir section
  # xcode          # Xcode section
  # swift          # Swift section
  # golang         # Go section
  # perl           # Perl section
  php            # PHP section
  # rust           # Rust section
  # haskell        # Haskell Stack section
  # scala          # Scala section
  # kotlin         # Kotlin section
  # java           # Java section
  # lua            # Lua section
  # dart           # Dart section
  # julia          # Julia section
  # crystal        # Crystal section
  docker         # Docker section
  docker_compose # Docker section
  aws            # Amazon Web Services section
  # gcloud         # Google Cloud Platform section
  # azure          # Azure section
  venv           # virtualenv section
  # conda          # conda virtualenv section
  # dotnet         # .NET section
  # ocaml          # OCaml section
  # vlang          # V section
  # zig            # Zig section
  # purescript     # PureScript section
  # erlang         # Erlang section
  # kubectl        # Kubectl context section
  # ansible        # Ansible section
  # terraform      # Terraform workspace section
  # pulumi         # Pulumi stack section
  # ibmcloud       # IBM Cloud section
  # nix_shell      # Nix shell
  # gnu_screen     # GNU Screen section
  exec_time      # Execution time
  async          # Async jobs indicator
  # line_sep       # Line break
  # battery        # Battery level and status
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  # sudo           # Sudo indicator
  char           # Prompt character
)

# ### PROMPT OPTIONS
# SPACESHIP_PROMPT_ASYNC="${SPACESHIP_PROMPT_ASYNC=true}"
# SPACESHIP_PROMPT_ADD_NEWLINE="${SPACESHIP_PROMPT_ADD_NEWLINE=false}"
# SPACESHIP_PROMPT_SEPARATE_LINE="${SPACESHIP_PROMPT_SEPARATE_LINE=true}"
# SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="${SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true}"
# SPACESHIP_PROMPT_PREFIXES_SHOW="${SPACESHIP_PROMPT_PREFIXES_SHOW=true}"
# SPACESHIP_PROMPT_SUFFIXES_SHOW="${SPACESHIP_PROMPT_SUFFIXES_SHOW=true}"
# SPACESHIP_PROMPT_DEFAULT_PREFIX="${SPACESHIP_PROMPT_DEFAULT_PREFIX="_"}"
# SPACESHIP_PROMPT_DEFAULT_SUFFIX="${SPACESHIP_PROMPT_DEFAULT_SUFFIX="_"}"

# SPACESHIP_HOST_SHOW="always"
# SPACESHIP_HOST_PREFIX="_"
# SPACESHIP_HOST_SHOW=false
# SPACESHIP_TIME_SHOW=false
# SPACESHIP_USER_SHOW=false
# SPACESHIP_USER_SHOW="needed"
# SPACESHIP_EXEC_TIME_SHOW=false

# SPACESHIP_DIR_SHOW=true
# SPACESHIP_DIR_TRUNC_REPO=true
# SPACESHIP_DIR_TRUNC=3
# SPACESHIP_DIR_PREFIX=""
# SPACESHIP_DIR_SUFFIX="/ "

# SPACESHIP_GIT_SHOW=true
# SPACESHIP_GIT_PREFIX=""
# SPACESHIP_GIT_SUFFIX=" "

# SPACESHIP_NODE_SHOW=true
# SPACESHIP_NODE_PREFIX=""
# SPACESHIP_NODE_SUFFIX=""
# SPACESHIP_NODE_SYMBOL="⬢ "

# SPACESHIP_PACKAGE_SHOW=true

# SPACESHIP_PHP_SHOW=true
# SPACESHIP_PHP_PREFIX="("
# SPACESHIP_PHP_SUFFIX=") "

# SPACESHIP_EXIT_CODE_SHOW=true
# SPACESHIP_EXIT_CODE_PREFIX="{exit code: "
# SPACESHIP_EXIT_CODE_SUFFIX="} "