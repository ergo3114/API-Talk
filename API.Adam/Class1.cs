using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using Microsoft.Win32;

namespace API.Adam
{
    /// <summary>
    /// A class that has methods to work with Windows processes
    /// </summary>
    public class Processes
    {
        /// <summary>
        /// Variable of all process that will be used by all static methods
        /// </summary>
        static private Process[] processCollection = Process.GetProcesses();

        /// <summary>
        /// Gets all running processes
        /// </summary>
        /// <returns>A collections of processes</returns>
        static public Process[] GetProcesses()
        {
            return processCollection;
        }

        /// <summary>
        /// Gets the named running processes
        /// </summary>
        /// <param name="name">Name of the process requested</param>
        /// <returns>A named processes or null if not found</returns>
        static public Process GetProcess(string name)
        {
            foreach(Process process in processCollection)
            {
                if(process.ProcessName == name)
                {
                    return process;
                }
            }
            return null;
        }
    }
    
    /// <summary>
    /// A class that has methods to work with the Operating System
    /// </summary>
    public class OperatingSystem
    {
        /// <summary>
        /// Gets the Windows theme as declared in the HKCU registry key
        /// </summary>
        /// <returns>A string with the Windows theme as the value</returns>
        static public string GetWindowsTheme()
        {
            string RegistryKey = @"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes";
            string theme;
            theme = (string)Registry.GetValue(RegistryKey, "CurrentTheme", string.Empty);
            theme = theme.Split('\\').Last().Split('.').First().ToString();
            return theme;
        }
    }
}