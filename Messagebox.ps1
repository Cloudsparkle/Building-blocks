# Get ready for the GUI stuff
Add-Type -AssemblyName PresentationFramework

# Check if Hub site was provided
if ($Dummy -eq $null)
{
 $msgBoxInput = [System.Windows.MessageBox]::Show("Some dummy text.","Error","OK","Error")
 switch  ($msgBoxInput)
 {
   "OK"
   {
     Exit 1
   }
 }
}
