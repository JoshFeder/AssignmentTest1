using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentTest1.Administrator
{
    public partial class statistics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (drpDownChart3d.SelectedValue == "Show 2d")
            {
                chartBookingsPerMonth.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
                chartBookingsPerRoom.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
                chartCustomersPerState.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
            }
            else
            {
                chartBookingsPerMonth.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
                chartBookingsPerRoom.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
                chartCustomersPerState.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            }
            String chartType = drpDownChartType.SelectedValue;

            chartBookingsPerMonth.Series["Series1"].ChartType = (System.Web.UI.DataVisualization.Charting.SeriesChartType)Enum.Parse(typeof(System.Web.UI.DataVisualization.Charting.SeriesChartType), chartType);
            chartBookingsPerRoom.Series["Series1"].ChartType = (System.Web.UI.DataVisualization.Charting.SeriesChartType)Enum.Parse(typeof(System.Web.UI.DataVisualization.Charting.SeriesChartType), chartType);
            chartCustomersPerState.Series["Series1"].ChartType = (System.Web.UI.DataVisualization.Charting.SeriesChartType)Enum.Parse(typeof(System.Web.UI.DataVisualization.Charting.SeriesChartType), chartType);

        }
    }
}