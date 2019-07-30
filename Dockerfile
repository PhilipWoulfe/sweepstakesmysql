FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 49988
EXPOSE 44389

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY ["SweepstakesAppEngineMySQL/SweepstakesAppEngineMySQL.csproj", "SweepstakesAppEngineMySQL/"]
RUN dotnet restore "SweepstakesAppEngineMySQL/SweepstakesAppEngineMySQL.csproj"
COPY . .
WORKDIR "/src/SweepstakesAppEngineMySQL"
RUN dotnet build "SweepstakesAppEngineMySQL.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "SweepstakesAppEngineMySQL.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "SweepstakesAppEngineMySQL.dll"]