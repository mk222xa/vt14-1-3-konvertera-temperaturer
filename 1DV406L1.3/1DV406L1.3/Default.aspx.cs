using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1DV406L1._3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void convertButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var firstTempBox = int.Parse(firstTempTextBox.Text);
                var secondTempBox = int.Parse(secondTempTextBox.Text);
                var increaseTempBox = int.Parse(increaseTempTextBox.Text);

                while (firstTempBox <= secondTempBox)
                {
                    TableRow tableRow = new TableRow();
                    Table1.Rows.Add(tableRow);

                    TableCell convertFromTableCell = new TableCell();
                    convertFromTableCell.Text = firstTempBox.ToString();
                    tableRow.Cells.Add(convertFromTableCell);

                    TableCell convertToTableCell = new TableCell();

                    if (celciusRadioButton.Checked == true)
                    {
                        convertToTableCell.Text = Model.TemperatureConverter.CelciusToFahrenheit(firstTempBox).ToString();

                        firstTempHeader.Text = "Celcius";
                        secondTempHeader.Text = "Fahrenheit";
                    }

                    else if (fahrenheitRadioButton.Checked == true)
                    {
                        convertToTableCell.Text = Model.TemperatureConverter.FahrenheitToCelcius(firstTempBox).ToString();

                        firstTempHeader.Text = "Fahrenheit";
                        secondTempHeader.Text = "Celcius";
                    }

                    tableRow.Cells.Add(convertToTableCell);

                    firstTempBox = firstTempBox + increaseTempBox; 
                }

                Table1.Visible = true;
            }
        }
    }
}