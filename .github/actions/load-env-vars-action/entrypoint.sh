env_file="${1}"
if [ -f "$env_file ]; then
  source "$env_file"
  for var in $(cat "$env_file"); do
    export "$var"
  done
else
  echo "Error: $env_file not found!"
  exit 1
fi
