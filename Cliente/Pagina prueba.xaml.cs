namespace Cliente;

public partial class Pagina_prueba : ContentPage
{
	public Pagina_prueba()
	{
		InitializeComponent();
	}

	private async void esto(object sender, EventArgs e)
	{
        await Launcher.Default.OpenAsync("https://aka.ms/maui");
    }
}