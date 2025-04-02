using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace C__XC8_PROTEUS_SIM
{
  public partial class Form1 : Form
  {

    string main_namespace = "C__XC8_PROTEUS_SIM";
    string project_directory = ".\\";
    string XC8_path_exist = "C:\\Program Files\\Microchip\\xc8";
    string PROTEUS_path_exist = "C:\\Program Files (x86)\\Labcenter Electronics\\Proteus 8 Professional\\BIN\\PDS.EXE";
   
    string[] xc8_folders_array = { };

    string app_file_name = "";
	string COMPILER_XC8_PATH = "C:\\PROGRA~1\\Microchip\\";
	string xc8_cc_string = "\\bin\\xc8-cc";

	string COMPILER_COMMAND = "/K C:\\PROGRA~1\\Microchip\\xc8\\v2.45\\bin\\xc8-cc -mcpu=16F1829 -o main.hex main.c initcpu.c\r\n";

	string EXECUTE_COMMAND = "";
	string EXECUTE_COMMAND_ECHO = "";

	string setting_folder = "setting_folder";
    string XC8_PROJECT_settings = @"XC8_PROJECT_settings.txt";

    string pic_micro_device = "";
    string compiler_version_use = "";
    string optimization_level = "";
    string offset_value = "";

	string[] settings_lines = { };

	// need for File. class functions
	StreamReader streamReader = null;

	// EXTRACT from C#_XC8_PROTEUS_SIM.exe file all embedded resource
	// asembly files add to exe and paths for different folders
	public static void Assembly_eXtract
            (string nameSpace, string extract_Directory,
            string internal_Filepath, string resource_Name)
    {
      Assembly assembly_extract = Assembly.GetCallingAssembly();
      using (Stream stream_extract = assembly_extract.GetManifestResourceStream(nameSpace + "." + (internal_Filepath == "" ? "" : internal_Filepath + ".") + resource_Name))
      using (BinaryReader binaryReader = new BinaryReader(stream_extract))
      using (FileStream fileSystem = new FileStream(extract_Directory + "\\"
          + resource_Name, FileMode.OpenOrCreate))
      using (BinaryWriter binaryWriter = new BinaryWriter(fileSystem))

        binaryWriter.Write(binaryReader.ReadBytes((int)stream_extract.Length));
    }

    public Form1()
    {

      InitializeComponent();

    }

    private void Form1_Load(object sender, EventArgs e)
    {
	  label12.BackColor = Color.Red;
	  label12.ForeColor = Color.Black;
	  label12.Text = "COMPILER IS STOPED";

	  // get path of local folder for project
	  app_file_name = Application.ExecutablePath;

	  // found if XC8 is installed
	  folderBrowserDialog1.RootFolder = Environment.SpecialFolder.MyComputer;
      folderBrowserDialog1.SelectedPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory), XC8_path_exist);
      
       xc8_folders_array = Directory.GetDirectories(folderBrowserDialog1.SelectedPath);

        if (folderBrowserDialog1.SelectedPath != "")
        {
          comboBox1.Items.Clear();

          foreach (string xc8_folder in xc8_folders_array)
          {
            comboBox1.Items.Add(xc8_folder.Substring(27));
            //comboBox1.SelectedIndex = 0;
          }
		      
                comboBox1.BackColor = Color.LimeGreen;


              
           }
            else
		{
			comboBox1.BackColor = Color.Red;
			comboBox1.Text = "NO XC8";
        }
            
      // found if PROTEUS is installed
      if (File.Exists(PROTEUS_path_exist))
      {
          textBox3.BackColor = Color.LimeGreen;
          textBox3.Text = "PROTEUS OK";
      }
      else
      {
        textBox3.BackColor = Color.Red;
        textBox3.Text = "NO PROTEUS";
      }

      // ====================================================
      if (!File.Exists(XC8_PROJECT_settings))
      {
        Assembly_eXtract(main_namespace, project_directory, setting_folder, XC8_PROJECT_settings);
        Task.Delay(1000).Wait();
      }

        label1.Text = app_file_name;
      label10.Text = COMPILER_COMMAND;

	  settings_lines = File.ReadAllLines(XC8_PROJECT_settings, Encoding.UTF8);
      byte xc8_count = 0;

	  // read and process data from setting lines from file
	  while (xc8_count < settings_lines.Length)
      {
		if (settings_lines[xc8_count].StartsWith("PROJECTNAME"))
		{ textBox2.Text = settings_lines[xc8_count].Substring(12); }

		if (settings_lines[xc8_count].StartsWith("PROJECTDESCRIPTION"))
		{ textBox4.Text = settings_lines[xc8_count].Substring(19); }

		if (settings_lines[xc8_count].StartsWith("PICDEVICE"))
		{ textBox1.Text = settings_lines[xc8_count].Substring(10); }

		if (settings_lines[xc8_count].StartsWith("XC8_VERSION"))
		{ comboBox1.Text = settings_lines[xc8_count].Substring(12); }

		if (settings_lines[xc8_count].StartsWith("OPTIMIZATION"))
		{ comboBox2.Text = settings_lines[xc8_count].Substring(13); }

		if (settings_lines[xc8_count].StartsWith("OFFSETVALUE"))
		{ textBox5.Text = settings_lines[xc8_count].Substring(12); }

		xc8_count++;

	  }

	} //  END Form1_Load

		private void button1_Click(object sender, EventArgs e)
		{       // BUTTO 1 COMPILE
			string pause_command = " ";
			string strCmdText = "";
			// prevent freezing of the form
			// Application.DoEvents();
				if (File.Exists(@"main.hex"))
				{
					strCmdText = "/C del main.hex";
					System.Diagnostics.Process.Start(@"CMD.exe", strCmdText);
				}

            
			Task.Delay(1000).Wait();

            if (File.Exists(@"main.hex"))
            {
                label12.BackColor = Color.LimeGreen;
                label12.Text = "main.hex FILE IS CREATED\nIN CURRENT FOLDER";
            }
            else
            {
                label12.BackColor = Color.Red;
                label12.Text = "!!! ERROR IN COMPILER\nmain.hex NOT CREATED !!!";
            }

            label12.BackColor = Color.LimeGreen;
            label12.Text = "COMPILING STARTED WAIT FOR main.hex FILE";

            //Task.Delay(1000).Wait();

				pic_micro_device = textBox1.Text;
				compiler_version_use = comboBox1.Text;

				if (comboBox2.Text == "LEVEL 0")
				{ optimization_level = ""; }

				if (comboBox2.Text == "LEVEL 1")
				{ optimization_level = "-O1"; }

				if (comboBox2.Text == "LEVEL 2")
				{ optimization_level = "-O2"; }

				if (comboBox2.Text == "LEVEL 3")
				{
					optimization_level = "-O3";

				}

				if (textBox5.Text == "0")
				{ offset_value = ""; }

				if (textBox5.Text != "0")
				{ offset_value = "-mcodeoffset=" + textBox5.Text; }

				// example of using CMD command for compiler
				//string COMPILER_COMMAND = "C:\\PROGRA~1\\Microchip\\xc8\\v2.45\\bin\\xc8-cc -mcpu=18F47K42 -O2 -o main.hex main.c initcpu.c -mcodeoffset=1000\r\n";

				// echo in CMD executed command put all in one
				//COMPILER_COMMAND = "/K echo" + COMPILER_XC8_PATH + " -mcpu=" + pic_micro_device + optimization_level + "-o main.hex main.c initcpu.c" + offset_value;

				// example for execute working command for project
				// COMPILER_COMMAND = "/K C:\\PROGRA~1\\Microchip\\xc8\\v2.45\\bin\\xc8-cc -mcpu=16F1829 -o main.hex main.c initcpu.c\r\n";

				EXECUTE_COMMAND_ECHO = "/K echo " + COMPILER_XC8_PATH + compiler_version_use + xc8_cc_string + pause_command + "-mcpu=" + pic_micro_device + pause_command + optimization_level + " -o main.hex main.c initcpu.c" + pause_command + offset_value;

				EXECUTE_COMMAND = "/K " + COMPILER_XC8_PATH + compiler_version_use + xc8_cc_string + pause_command + "-mcpu=" + pic_micro_device + pause_command + optimization_level + " -o main.hex main.c initcpu.c" + pause_command + offset_value;

				label10.Text = EXECUTE_COMMAND;
			 

            System.Diagnostics.Process.Start("CMD.exe", EXECUTE_COMMAND_ECHO);
				System.Diagnostics.Process.Start("CMD.exe", EXECUTE_COMMAND);

				while (!File.Exists(@"main.hex"))
				{
					Task.Delay(1000).Wait();
                    // wait compiler to make main.hex file
                    if (!File.Exists(@"main.hex"))
                    {
                        label12.BackColor = Color.Red;
                    label12.Text = "!!! ERROR IN COMPILER\nmain.hex NOT CREATED !!!";
                    break;
                    }
                }

				if (File.Exists(@"main.hex"))
				{
					label12.BackColor = Color.LimeGreen;
					label12.Text = "main.hex FILE IS CREATED\nIN CURRENT FOLDER";
				}
				else
                {
                    label12.BackColor = Color.Red;
                    label12.Text = "!!! ERROR IN COMPILER\nmain.hex NOT CREATED !!!";
                }
            
		}

	private void button4_Click(object sender, EventArgs e)
	{       // BUTTON 4 CMD OPEN FOLDER
	  string strCmdText = "/K dir";
	  System.Diagnostics.Process.Start("CMD.exe", strCmdText);
	}

	private void button3_Click(object sender, EventArgs e)
	{	  // BUTTON OPEN CALCULATOR
	  System.Diagnostics.Process.Start(@"C:\Windows\System32\calc.exe");
	}

	private void button7_Click(object sender, EventArgs e)
	{	  // BUTTON OPEN NOTEPAD++
	  //standart path to notepad++ >> C:\Program Files\Notepad++\notepad++.exe
	  string strCmdText;
	  string current_File_main = @"C:\Program Files\Notepad++\notepad++.exe";
	  string current_File_c = @"main.c";
	  if (File.Exists(current_File_main))
	  {
		if (File.Exists(current_File_c))
		{
		  System.Diagnostics.Process.Start(@"C:\Program Files\Notepad++\notepad++.exe", "main.c");
		}
		//else
		//	if (File.Exists(current_File_cpp))
		//{
		//  System.Diagnostics.Process.Start(@"C:\Program Files\Notepad++\notepad++.exe", "main.cpp");
		//}
		else
		{
		  strCmdText = "/K echo NO main.cpp OR main.c FILE TO OPEN OPEN NOTEPAD++ with new empty file";
		  System.Diagnostics.Process.Start("CMD.exe", strCmdText);
		  System.Diagnostics.Process.Start(@"C:\Program Files\Notepad++\notepad++.exe", "");
		}

	  }
	  else
	  {
		strCmdText = "/K echo NOTEPAD++ IS NOT INSTALLED !!! ERROR !!! ";
		System.Diagnostics.Process.Start("CMD.exe", strCmdText);
	  }
	}

	private void button5_Click(object sender, EventArgs e)
	{	  // BUTTON WINDOWS FILE EXPLORER
	  //string strCmdText = "/K dir";
	  System.Diagnostics.Process.Start(@"Explorer.exe", ".\\");
	}

	private void button6_Click(object sender, EventArgs e)
	{	  // BUTTON OPEN FOLDER IN COMMAND PROMPT
	  string strCmdText = "/K";
	  System.Diagnostics.Process.Start("CMD.exe", strCmdText);
	}

	private void button2_Click(object sender, EventArgs e)
	{  // BUTTON OPEN PROTEUS
	  System.Diagnostics.Process.Start(PROTEUS_path_exist);
	}
  }
}
