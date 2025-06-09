#!/bin/sh
#
# copy-vmlinuz.sh — auto-detect kernel and copy vmlinuz into /efi
#

# 1) Bail out if /boot isn’t mounted
mountpoint -q /boot || exit 0

# 2) Collect all /usr/lib/modules/* dirs that contain a "vmlinuz" file
candidates=()
for dir in /usr/lib/modules/*; do
  [ -d "$dir" ]     || continue
  [ -f "$dir/vmlinuz" ] || continue
  candidates+=("$dir")
done

# 3) Zero/one/many logic
case "${#candidates[@]}" in
  0)
    echo "ERROR: No /usr/lib/modules/*/vmlinuz found; cannot determine kernel." >&2
    exit 1
    ;;
  1)
    selected="${candidates[0]}"
    ;;
  *)
    # Pick the “newest” by version sort (GNU sort -V)
    newest=$(printf '%s\n' "${candidates[@]}" | sort -V | tail -n1)
    selected="$newest"
    ;;
esac

# 4) Derive version string
kernver=$(basename "$selected")

# 5) Copy vmlinuz into /efi
dest_generic="/boot/vmlinuz-linux"

if ! install -Dm644 "${selected}/vmlinuz" "$dest_generic"; then
  echo "WARNING: Could not copy ${selected}/vmlinuz → $dest_generic" >&2
fi

exit 0
