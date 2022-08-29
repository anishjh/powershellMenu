$menu = Get-Content .\menu.json | ConvertFrom-Json 
    Write-Output $menu | Out-Host;

    $order = @()
    $totalPrice = 0;
    do 
    {
    
        $userInput = Read-Host -Prompt "Give numbers of the dish you want to order. If done ordering press the n Button?"
        
        if($userInput -ne "n")
        {

        $userInput = $menu[$userInput].price
        $totalPrice += $userInput
        $orderList = $menu[$userInput].Dish
        $order += $orderList
        $totalPrice

        }
    }
    until ($userInput -eq 'n')
    clear
$order
echo "The total price is: "  $totalPrice
    
     

