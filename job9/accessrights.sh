csv_file="Shell_Userlist.csv"
if [ ! -f "$csv_file" ]; then
  echo "Le fichier CSV '$csv_file' n'existe pas."
  exit 1
fi

while IFS=',' read -r Prenom Mdp rôle; do
  if [ "$rôle" = "admin" ]; then
    useradd -m -s /bin/bash "$Prenom"
    echo "$Prenom:$Mdp" | chpasswd
    usermod -aG sudo "$Prenom"
    echo "L'utilisateur $Prenom a été créé
  else 
    useradd -m -s /bin/bash "$Prenom"
    echo "$Prenom:$Mdp" | chpasswd
    echo "L'utilisateur $Prenom a été créé."
  fi
done < "$csv_file"
