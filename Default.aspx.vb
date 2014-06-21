
Partial Class Default2
    Inherits System.Web.UI.Page

    Public domainfee As Decimal
    Public cmsfee As Decimal
    Public maintenancefee As Decimal

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles calculateButton.Click

        Dim designfee, buildfee, perpagebuild, hostingperpagefee, mailboxrent, ecommercebuildfee, domainuk, domaincom, stdhosting, ecommercehosting, premhosting, premecommercehost, cms, cmshosting As Decimal

        designfee = 125  'price for website design
        buildfee = 99  ' conversion to html
        perpagebuild = 25   'addtl cost per page
        hostingperpagefee = 0 'addtl hosting fee per page (montly)
        mailboxrent = 1 'pop3 mailbox rental
        ecommercebuildfee = 350 'addtl build cost for ecommerce sites
		domainuk = 5 '.co.uk domain
		domaincom = 12 '.com domain
		stdhosting = 11.98 'std hosting
		ecommercehosting = 19.98 'ecommerce hosting
		premhosting = 14.98 'prem hosting
		premecommercehost = 24.98' prem ecommerce hosting
		cms = 100 'cms
		cmshosting = 2 'addtl hosting prem for cms


        'set domain fee

        Select Case domainList.SelectedValue

            Case "Not Required"
                domainfee = 0     'no domain
            Case ".co.uk"
                domainfee = domainuk   'annual fee for .co.uk domain
            Case ".com"
                domainfee = domaincom '.com domain
        End Select

        'set hosting and maintenance fee

        If rbStdMtce.Checked Then
            maintenancefee = stdhosting     'standard maintenance (monthly fee)
            ecommercehosting = ecommercehosting  'standard ecommerce hosting (monthly)
        ElseIf rbPremMtce.Checked Then
            maintenancefee = premhosting          'premium maintenance
            ecommercehosting = premecommercehost     'premium ecommerce hosting
        End If

        'set CMS fee

        Select Case cmsreqd.SelectedValue

            Case "Not Required"
                cmsfee = 0     'no cms
            Case "Required"
                cmsfee = cms  'require cms
                cmshosting = cmshosting   'addtl cost for cms hosting

        End Select

        'calculate website build/hosting fees
        If ecommercereqd.SelectedValue = "Required" Then ' ecommerce required

            quote.Text = domainfee + designfee + buildfee + ecommercebuildfee + (noofpages.SelectedValue * perpagebuild)
            maintenancefees.Text = (noofpages.SelectedValue * hostingperpagefee) + ecommercehosting + (noofmailboxes.SelectedValue * mailboxrent)

        Else 'ecommerce not required

            quote.Text = domainfee + designfee + buildfee + cmsfee + (noofpages.SelectedValue * perpagebuild)
            maintenancefees.Text = (noofpages.SelectedValue * hostingperpagefee) + maintenancefee + cmshosting + (noofmailboxes.SelectedValue * mailboxrent)

        End If

        Label1.Visible = True
        Label2.Visible = True
        Label3.Visible = True
        Label4.Visible = True
        HyperLink1.Visible = True
        calculateButton.Visible = False
        resetbutton.Visible = True
    End Sub

    Protected Sub resetbutton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles resetbutton.Click
        rbStdMtce.Checked = True
        rbPremMtce.Checked = False
        quote.Text = ""
        noofpages.SelectedValue = "0"
        noofmailboxes.SelectedValue = "0"
        maintenancefees.Text = ""
        domainList.SelectedValue = "Not Required"
        ecommercereqd.SelectedValue = "Not Required"
        cmsreqd.SelectedValue = "Not Required"
        Label1.Visible = False
        Label2.Visible = False
        Label3.Visible = False
        Label4.Visible = False
        HyperLink1.Visible = False
        calculateButton.Visible = True
        resetbutton.Visible = False

    End Sub

End Class
