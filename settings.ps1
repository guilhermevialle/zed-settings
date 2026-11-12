Set-Location $HOME

function tf
{ & terraform $args
}
function t
{ & tofu $args
}
function pip
{ & py -m pip $args
}
function a
{ & php artisan $args
}
function d
{ & docker $args
}
function dc
{ & docker compose $args
}

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle InlineView
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Chord Delete -Function AcceptSuggestion

oh-my-posh init pwsh --config "$HOME\Downloads\catppuccin.omp.json" | Invoke-Expression

Clear-Host
