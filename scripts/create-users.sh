#!/bin/bash
#Author Praneeth Perera

USER_FILE="../users.txt"
GROUP="devops"

if [[ ! -f $USER_FILE ]]; then
  echo "User file not found!"
  exit 1
fi

while IFS= read -r user; do
  if id "$user" &>/dev/null; then
    echo "User $user already exists."
  else
    sudo useradd -m -G "$GROUP" "$user"
    echo "$user:Default123!" | sudo chpasswd
    sudo chage -d 0 "$user"
    echo "Created user: $user"
  fi
done < "$USER_FILE"

