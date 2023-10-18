echo "Creating Dotnet Worker Application for $1"


if [ -z "$1" ]
then
      echo Error: Application name is empty. please pass application name as argument
      exit 1
else
    dotnet new sln -n $1.Project -o . --force
    dotnet new worker --name $1.Project -o ./src
    dotnet sln $1.Project.sln add ./src/$1.Project.csproj
echo "Finished Creating Dotnet Worker Application for $1" 

fi

