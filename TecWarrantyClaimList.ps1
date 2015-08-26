$loginUrl="https://staging-tecwarranty-cld.tecalliance.net/Account/Login"
$deciderListUrl="https://staging-tecwarranty-cld.tecalliance.net/Grid/ClaimOverviewDeciderData"
$r=Invoke-WebRequest $loginUrl -SessionVariable sess
$form=$r.Forms
$loginForm=$form[1]
$loginForm.Fields["UserName"]="skf_decider"
$loginForm.Fields["Password"]="......"
$r=Invoke-WebRequest -Uri $loginUrl -WebSession $sess -Method Post -Body $loginForm.Fields


$r=Invoke-WebRequest -Uri $deciderListUrl -WebSession $sess -Method Post