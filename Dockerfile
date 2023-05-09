# Use the official SQL Server image as the base
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set environment variables for SQL Server configuration
ENV SA_PASSWORD=Yourpassword123
ENV ACCEPT_EULA=Y

# Expose the SQL Server port for external access
EXPOSE 1433

# The CMD directive is already defined in the base image to start the SQL Server


# To run this container with persistend data storage :

# Localhost docker: 
# _connectionString = "Server=localhost,1433;Database=BikeStores;User Id=sa;Password=MyStrong!Passw0rd;TrustServerCertificate=true;";

# docker sql command:
# docker run --name my-sqlserver-instance1 -p 1433:1433 -e 'SA_PASSWORD=MyStrong!Passw0rd' -e 'ACCEPT_EULA=Y' -v C:\Users\mario\Desktop\DB:/var/opt/mssql/data -d my-sqlserver