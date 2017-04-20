'Project:       Big Bear Cabins Online Reservation Form
'Author:        Joshua Marshall
'Date :         April 12th, 2017
'Purpose:       The following web application will request reservation information
'               for the Big Bear cabins. This website will compute 
'               the cost of the number of nights and cabin(s) selected.


Option Strict On




Public Class About
    Inherits Page



    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        'The btnSubmit_Click event will calculate the cost of the cabin based
        'on the type of cabin selected and the number of nights reserved.

        'Delclare Variaables

        Dim decGrizzlyCost As Decimal = 99D
        Dim decPolarCost As Decimal = 89D
        Dim decKodiakCost As Decimal = 79D
        Dim strName As String
        Dim strEmail As String
        Dim decCabinCost As Decimal = 0D
        Dim intNumberOfNights As Integer
        Dim strMessage As String

        'Trim additional spaces that are ent
        strName = txtName.Text.Trim()
        strEmail = txtEmail.Text.Trim()

        'Clear the lblReservations Label
        lblReservation.Text = ""

        'If Statement (Not keyword makes condition false if its true and true if its false and if it changes 
        'the condition to true then the If statement body code will execute
        If Not (chkGrizzly.Checked Or chkPolar.Checked Or chkKodiak.Checked) Then
            lblCabinError.Visible = True
            If cldArrival.SelectedDate < cldArrival.TodaysDate Then
                lblCalendarError.Visible = True
            Else
                lblCalendarError.Visible = False
            End If
        Else
            lblCabinError.Visible = False

            If cldArrival.SelectedDate >= cldArrival.TodaysDate Then
                lblCalendarError.Visible = False

                'Calculate the cost of the cabin(s) selected by the user
                If chkGrizzly.Checked Then
                    decCabinCost += decGrizzlyCost
                End If

                If chkPolar.Checked Then
                    decCabinCost += decPolarCost
                End If

                If chkKodiak.Checked Then
                    decCabinCost += decKodiakCost
                End If

                'Calculate Total Cabin Cost
                intNumberOfNights = CInt(ddlNights.SelectedItem.Text)
                decCabinCost = intNumberOfNights * decCabinCost


                'Create the Reservation Message

                strMessage = "A reservation has been made for: " & "<br>" &
                    strName & "<br>" & "Email: " & strEmail & "<br>"
                strMessage &= "The cabin(s) cost is: " &
                    decCabinCost.ToString("C") & "<br>"
                strMessage &= "Arrival Date: " _
                    & cldArrival.SelectedDate.ToShortDateString() _
                    & "<br>" & " For: " & intNumberOfNights & " night(s)"

                lblReservation.Text = strMessage
            Else
                lblCalendarError.Visible = True


            End If

        End If








    End Sub

    Protected Sub txtEmail_TextChanged(sender As Object, e As EventArgs) Handles txtEmail.TextChanged

    End Sub
End Class