echo "Configuring mongo..."

switchAdminDb="db = db.getSiblingDB('admin')"
createAdminUser="
db.createUser(
  {
    user: \"admin\",
    pwd: \"admin\",
    roles: [ { role: \"userAdminAnyDatabase\", db: \"admin\" } ]
  }
)
"

echo $switchAdminDb 
echo $createAdminUser

mongo --host "localhost" --port 30001 --eval "$switchAdminDb; $createAdminUser"

echo "Done."
