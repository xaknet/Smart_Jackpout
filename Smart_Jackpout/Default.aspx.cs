using System;
using System.Web;
using System.Web.UI;

namespace Smart_Jackpout
{
	
	public partial class Default : System.Web.UI.Page
	{
		public string errorMessage = String.Empty;


		protected void OnClickPay(object sender, EventArgs e)
		{

			AddPayAmount ();
		}

		protected void AddPayAmount()
		{
			int inputAmount;

			try {
				if (txtAmount != null)
				{
					inputAmount = int.Parse(txtAmount.Text);
					lblAmount.Visible = true;
					lblAmount.Text = inputAmount.ToString();
				}


			} catch (Exception ex) {
			
				errorMessage = ex.Message;
			}
				
		}

	}
}

