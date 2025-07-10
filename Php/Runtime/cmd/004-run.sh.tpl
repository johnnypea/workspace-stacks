# Escape a given string so that it’s safe to include in JSON.
# This function uses awk to perform the necessary substitutions.
json_escape() {
   # Using printf with awk to escape backslashes, quotes, tabs, CR, and newlines.
   printf "%s" "$1" | awk '{
      gsub(/\\/,"\\\\\\\\");
      gsub(/"/,"\\\"");
      gsub(/\t/,"\\t");
      gsub(/\r/,"\\r");
      gsub(/\n/,"\\n");
      printf("\"%s\"",$0)
   }'
}
