new g_Time4[MAXPLAYERS+1];

#define SPAMTIME4 180

public OnPluginStart() {
}

public Action OnClientSayCommand(client, const String:command[], const String:sArgs[])
{ 
    if (strcmp(sArgs, "!difficulty", false) == 0){
  if(g_Time4[client] == 0 || g_Time4[client] <= ( GetTime() - SPAMTIME4 ))
    {
        // Set the time
        g_Time4[client] = GetTime();
   
        // Your function or command
        EnableVote4(client);
    }

    return Plugin_Handled;
	}
}

EnableVote4(client)
{
ServerCommand("plugins enable customvotes.smx");
}

// Of course don't forget to reset the time if it is a long time
public OnClientPostAdminCheck(client)
{
    g_Time4[client] = 0;
}



