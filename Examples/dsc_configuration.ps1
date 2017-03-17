configuration <%=${PLASTER_PARAM_project_name}%>
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-DSCResource -ModuleName <%=${PLASTER_PARAM_project_name}%>

    Node $NodeName
    {

        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = $Ensure
            Name            = "Web-Server"
        }

    }
}
