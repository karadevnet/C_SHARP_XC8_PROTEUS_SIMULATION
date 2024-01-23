namespace C__XC8_PROTEUS_SIM
{
  partial class Form1
  {
    /// <summary>
    /// Required designer variable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing)
    {
      if (disposing && (components != null))
      {
        components.Dispose();
      }
      base.Dispose(disposing);
    }

    #region Windows Form Designer generated code

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
	  System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
	  this.button1 = new System.Windows.Forms.Button();
	  this.comboBox1 = new System.Windows.Forms.ComboBox();
	  this.textBox1 = new System.Windows.Forms.TextBox();
	  this.textBox2 = new System.Windows.Forms.TextBox();
	  this.textBox3 = new System.Windows.Forms.TextBox();
	  this.button2 = new System.Windows.Forms.Button();
	  this.button3 = new System.Windows.Forms.Button();
	  this.button4 = new System.Windows.Forms.Button();
	  this.button5 = new System.Windows.Forms.Button();
	  this.button6 = new System.Windows.Forms.Button();
	  this.folderBrowserDialog1 = new System.Windows.Forms.FolderBrowserDialog();
	  this.textBox4 = new System.Windows.Forms.TextBox();
	  this.label1 = new System.Windows.Forms.Label();
	  this.label2 = new System.Windows.Forms.Label();
	  this.label3 = new System.Windows.Forms.Label();
	  this.label4 = new System.Windows.Forms.Label();
	  this.comboBox2 = new System.Windows.Forms.ComboBox();
	  this.textBox5 = new System.Windows.Forms.TextBox();
	  this.label5 = new System.Windows.Forms.Label();
	  this.label6 = new System.Windows.Forms.Label();
	  this.label7 = new System.Windows.Forms.Label();
	  this.label8 = new System.Windows.Forms.Label();
	  this.label9 = new System.Windows.Forms.Label();
	  this.label10 = new System.Windows.Forms.Label();
	  this.label11 = new System.Windows.Forms.Label();
	  this.label12 = new System.Windows.Forms.Label();
	  this.button7 = new System.Windows.Forms.Button();
	  this.SuspendLayout();
	  // 
	  // button1
	  // 
	  this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.button1.Location = new System.Drawing.Point(438, 400);
	  this.button1.Name = "button1";
	  this.button1.Size = new System.Drawing.Size(155, 59);
	  this.button1.TabIndex = 0;
	  this.button1.Text = "COMPILE";
	  this.button1.UseVisualStyleBackColor = true;
	  this.button1.Click += new System.EventHandler(this.button1_Click);
	  // 
	  // comboBox1
	  // 
	  this.comboBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.comboBox1.FormattingEnabled = true;
	  this.comboBox1.Location = new System.Drawing.Point(438, 193);
	  this.comboBox1.Name = "comboBox1";
	  this.comboBox1.Size = new System.Drawing.Size(155, 28);
	  this.comboBox1.TabIndex = 1;
	  this.comboBox1.Text = "/2.45/XC8";
	  // 
	  // textBox1
	  // 
	  this.textBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.textBox1.Location = new System.Drawing.Point(438, 52);
	  this.textBox1.MaxLength = 15;
	  this.textBox1.Name = "textBox1";
	  this.textBox1.Size = new System.Drawing.Size(155, 29);
	  this.textBox1.TabIndex = 2;
	  this.textBox1.Text = "PIC16F1829";
	  // 
	  // textBox2
	  // 
	  this.textBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.textBox2.Location = new System.Drawing.Point(12, 52);
	  this.textBox2.Name = "textBox2";
	  this.textBox2.Size = new System.Drawing.Size(400, 29);
	  this.textBox2.TabIndex = 3;
	  this.textBox2.Text = "PLC 8 RELAYS 8 ADC 8 INPUTS";
	  // 
	  // textBox3
	  // 
	  this.textBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.textBox3.Location = new System.Drawing.Point(438, 121);
	  this.textBox3.MaxLength = 10;
	  this.textBox3.Name = "textBox3";
	  this.textBox3.ReadOnly = true;
	  this.textBox3.Size = new System.Drawing.Size(155, 29);
	  this.textBox3.TabIndex = 4;
	  this.textBox3.Text = "PROTEUS OK";
	  // 
	  // button2
	  // 
	  this.button2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.button2.Location = new System.Drawing.Point(612, 90);
	  this.button2.Name = "button2";
	  this.button2.Size = new System.Drawing.Size(155, 60);
	  this.button2.TabIndex = 6;
	  this.button2.Text = "PROTEUS";
	  this.button2.UseVisualStyleBackColor = true;
	  this.button2.Click += new System.EventHandler(this.button2_Click);
	  // 
	  // button3
	  // 
	  this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.button3.Location = new System.Drawing.Point(612, 316);
	  this.button3.Name = "button3";
	  this.button3.Size = new System.Drawing.Size(155, 60);
	  this.button3.TabIndex = 7;
	  this.button3.Text = "OPEN CALCULATOR";
	  this.button3.UseVisualStyleBackColor = true;
	  this.button3.Click += new System.EventHandler(this.button3_Click);
	  // 
	  // button4
	  // 
	  this.button4.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.button4.Location = new System.Drawing.Point(612, 239);
	  this.button4.Name = "button4";
	  this.button4.Size = new System.Drawing.Size(155, 60);
	  this.button4.TabIndex = 8;
	  this.button4.Text = "OPEN CMD WINDOW";
	  this.button4.UseVisualStyleBackColor = true;
	  this.button4.Click += new System.EventHandler(this.button4_Click);
	  // 
	  // button5
	  // 
	  this.button5.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.button5.Location = new System.Drawing.Point(612, 399);
	  this.button5.Name = "button5";
	  this.button5.Size = new System.Drawing.Size(155, 60);
	  this.button5.TabIndex = 9;
	  this.button5.Text = "EXPLORER FOLDER";
	  this.button5.UseVisualStyleBackColor = true;
	  this.button5.Click += new System.EventHandler(this.button5_Click);
	  // 
	  // button6
	  // 
	  this.button6.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.button6.Location = new System.Drawing.Point(612, 161);
	  this.button6.Name = "button6";
	  this.button6.Size = new System.Drawing.Size(155, 60);
	  this.button6.TabIndex = 10;
	  this.button6.Text = "CMD OPEN FOLDER";
	  this.button6.UseVisualStyleBackColor = true;
	  this.button6.Click += new System.EventHandler(this.button6_Click);
	  // 
	  // textBox4
	  // 
	  this.textBox4.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.textBox4.Location = new System.Drawing.Point(12, 121);
	  this.textBox4.Name = "textBox4";
	  this.textBox4.Size = new System.Drawing.Size(400, 29);
	  this.textBox4.TabIndex = 5;
	  this.textBox4.Text = "SIMPLE PLC BOARD with 8 RELAYS";
	  // 
	  // label1
	  // 
	  this.label1.BackColor = System.Drawing.Color.Transparent;
	  this.label1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
	  this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label1.ForeColor = System.Drawing.Color.Yellow;
	  this.label1.Location = new System.Drawing.Point(12, 195);
	  this.label1.MinimumSize = new System.Drawing.Size(400, 60);
	  this.label1.Name = "label1";
	  this.label1.Size = new System.Drawing.Size(400, 80);
	  this.label1.TabIndex = 11;
	  this.label1.Text = "work folder path";
	  // 
	  // label2
	  // 
	  this.label2.AutoSize = true;
	  this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label2.ForeColor = System.Drawing.Color.Yellow;
	  this.label2.Location = new System.Drawing.Point(12, 15);
	  this.label2.Name = "label2";
	  this.label2.Size = new System.Drawing.Size(170, 24);
	  this.label2.TabIndex = 12;
	  this.label2.Text = "PROJECT NAME";
	  // 
	  // label3
	  // 
	  this.label3.AutoSize = true;
	  this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label3.ForeColor = System.Drawing.Color.Yellow;
	  this.label3.Location = new System.Drawing.Point(12, 89);
	  this.label3.Name = "label3";
	  this.label3.Size = new System.Drawing.Size(246, 24);
	  this.label3.TabIndex = 13;
	  this.label3.Text = "PROJECT DESCRIPTION";
	  // 
	  // label4
	  // 
	  this.label4.AutoSize = true;
	  this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label4.ForeColor = System.Drawing.Color.Yellow;
	  this.label4.Location = new System.Drawing.Point(12, 158);
	  this.label4.Name = "label4";
	  this.label4.Size = new System.Drawing.Size(192, 24);
	  this.label4.TabIndex = 14;
	  this.label4.Text = "PROJECT FOLDER";
	  // 
	  // comboBox2
	  // 
	  this.comboBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.comboBox2.FormattingEnabled = true;
	  this.comboBox2.Items.AddRange(new object[] {
            "LEVEL 0",
            "LEVEL 1",
            "LEVEL 2",
            "LEVEL 3"});
	  this.comboBox2.Location = new System.Drawing.Point(438, 271);
	  this.comboBox2.Name = "comboBox2";
	  this.comboBox2.Size = new System.Drawing.Size(155, 28);
	  this.comboBox2.TabIndex = 15;
	  this.comboBox2.Text = "LEVEL 0";
	  // 
	  // textBox5
	  // 
	  this.textBox5.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.textBox5.Location = new System.Drawing.Point(438, 347);
	  this.textBox5.MaxLength = 5;
	  this.textBox5.Name = "textBox5";
	  this.textBox5.Size = new System.Drawing.Size(155, 29);
	  this.textBox5.TabIndex = 16;
	  this.textBox5.Text = "0";
	  // 
	  // label5
	  // 
	  this.label5.AutoSize = true;
	  this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label5.ForeColor = System.Drawing.Color.Yellow;
	  this.label5.Location = new System.Drawing.Point(467, 15);
	  this.label5.Name = "label5";
	  this.label5.Size = new System.Drawing.Size(123, 24);
	  this.label5.TabIndex = 17;
	  this.label5.Text = "PIC DEVICE";
	  // 
	  // label6
	  // 
	  this.label6.AutoSize = true;
	  this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label6.ForeColor = System.Drawing.Color.Yellow;
	  this.label6.Location = new System.Drawing.Point(483, 89);
	  this.label6.Name = "label6";
	  this.label6.Size = new System.Drawing.Size(107, 24);
	  this.label6.TabIndex = 18;
	  this.label6.Text = "PROTEUS";
	  // 
	  // label7
	  // 
	  this.label7.AutoSize = true;
	  this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label7.ForeColor = System.Drawing.Color.Yellow;
	  this.label7.Location = new System.Drawing.Point(483, 158);
	  this.label7.Name = "label7";
	  this.label7.Size = new System.Drawing.Size(114, 24);
	  this.label7.TabIndex = 19;
	  this.label7.Text = "COMPILER";
	  // 
	  // label8
	  // 
	  this.label8.AutoSize = true;
	  this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label8.ForeColor = System.Drawing.Color.Yellow;
	  this.label8.Location = new System.Drawing.Point(438, 234);
	  this.label8.Name = "label8";
	  this.label8.Size = new System.Drawing.Size(155, 24);
	  this.label8.TabIndex = 20;
	  this.label8.Text = "OPTIMIZATION";
	  // 
	  // label9
	  // 
	  this.label9.AutoSize = true;
	  this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label9.ForeColor = System.Drawing.Color.Yellow;
	  this.label9.Location = new System.Drawing.Point(428, 311);
	  this.label9.Name = "label9";
	  this.label9.Size = new System.Drawing.Size(165, 24);
	  this.label9.TabIndex = 21;
	  this.label9.Text = "OFFSET in HEX";
	  // 
	  // label10
	  // 
	  this.label10.BackColor = System.Drawing.Color.Transparent;
	  this.label10.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
	  this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label10.ForeColor = System.Drawing.Color.Yellow;
	  this.label10.Location = new System.Drawing.Point(12, 313);
	  this.label10.MinimumSize = new System.Drawing.Size(400, 60);
	  this.label10.Name = "label10";
	  this.label10.Size = new System.Drawing.Size(400, 80);
	  this.label10.TabIndex = 22;
	  this.label10.Text = "command to compile project";
	  // 
	  // label11
	  // 
	  this.label11.AutoSize = true;
	  this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label11.ForeColor = System.Drawing.Color.Yellow;
	  this.label11.Location = new System.Drawing.Point(12, 285);
	  this.label11.Name = "label11";
	  this.label11.Size = new System.Drawing.Size(376, 24);
	  this.label11.TabIndex = 23;
	  this.label11.Text = "COMPILER COMMAND FOR PROJECT";
	  // 
	  // label12
	  // 
	  this.label12.BackColor = System.Drawing.Color.Transparent;
	  this.label12.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
	  this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.label12.ForeColor = System.Drawing.Color.Yellow;
	  this.label12.Location = new System.Drawing.Point(12, 419);
	  this.label12.MinimumSize = new System.Drawing.Size(400, 40);
	  this.label12.Name = "label12";
	  this.label12.Size = new System.Drawing.Size(400, 40);
	  this.label12.TabIndex = 24;
	  this.label12.Text = "main.hex ready";
	  // 
	  // button7
	  // 
	  this.button7.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
	  this.button7.Location = new System.Drawing.Point(612, 15);
	  this.button7.Name = "button7";
	  this.button7.Size = new System.Drawing.Size(155, 60);
	  this.button7.TabIndex = 25;
	  this.button7.Text = "NOTEPAD++";
	  this.button7.UseVisualStyleBackColor = true;
	  this.button7.Click += new System.EventHandler(this.button7_Click);
	  // 
	  // Form1
	  // 
	  this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
	  this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
	  this.AutoSize = true;
	  this.BackColor = System.Drawing.Color.Blue;
	  this.ClientSize = new System.Drawing.Size(779, 471);
	  this.Controls.Add(this.button7);
	  this.Controls.Add(this.label12);
	  this.Controls.Add(this.label11);
	  this.Controls.Add(this.label10);
	  this.Controls.Add(this.label9);
	  this.Controls.Add(this.label8);
	  this.Controls.Add(this.label7);
	  this.Controls.Add(this.label6);
	  this.Controls.Add(this.label5);
	  this.Controls.Add(this.textBox5);
	  this.Controls.Add(this.comboBox2);
	  this.Controls.Add(this.label4);
	  this.Controls.Add(this.label3);
	  this.Controls.Add(this.label2);
	  this.Controls.Add(this.label1);
	  this.Controls.Add(this.button6);
	  this.Controls.Add(this.button5);
	  this.Controls.Add(this.button4);
	  this.Controls.Add(this.button3);
	  this.Controls.Add(this.button2);
	  this.Controls.Add(this.textBox4);
	  this.Controls.Add(this.textBox3);
	  this.Controls.Add(this.textBox2);
	  this.Controls.Add(this.textBox1);
	  this.Controls.Add(this.comboBox1);
	  this.Controls.Add(this.button1);
	  this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
	  this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
	  this.MaximizeBox = false;
	  this.Name = "Form1";
	  this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
	  this.Text = "C#_XC8_COMPILER_FOR_PROTEUS_SIMULATION";
	  this.Load += new System.EventHandler(this.Form1_Load);
	  this.ResumeLayout(false);
	  this.PerformLayout();

    }

    #endregion

    private System.Windows.Forms.Button button1;
    private System.Windows.Forms.ComboBox comboBox1;
    private System.Windows.Forms.TextBox textBox1;
    private System.Windows.Forms.TextBox textBox2;
    private System.Windows.Forms.TextBox textBox3;
    private System.Windows.Forms.Button button2;
    private System.Windows.Forms.Button button3;
    private System.Windows.Forms.Button button4;
    private System.Windows.Forms.Button button5;
    private System.Windows.Forms.Button button6;
    private System.Windows.Forms.FolderBrowserDialog folderBrowserDialog1;
    private System.Windows.Forms.TextBox textBox4;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Label label2;
    private System.Windows.Forms.Label label3;
    private System.Windows.Forms.Label label4;
    private System.Windows.Forms.ComboBox comboBox2;
    private System.Windows.Forms.TextBox textBox5;
    private System.Windows.Forms.Label label5;
    private System.Windows.Forms.Label label6;
    private System.Windows.Forms.Label label7;
    private System.Windows.Forms.Label label8;
    private System.Windows.Forms.Label label9;
    private System.Windows.Forms.Label label10;
    private System.Windows.Forms.Label label11;
    private System.Windows.Forms.Label label12;
    private System.Windows.Forms.Button button7;
  }
}

