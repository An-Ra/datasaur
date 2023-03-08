Feature: Whatsapp Feature Test
Testing Some Feature From Whatsapp Desktop App

Scenario: Verify User Able to Re-Generate QR Code
Given User Open Whatsapp Desktop App
And User wait some minutes until QR Code Invalid
When User Click Re-Generate QR Code
Then User Given New Generated QR Code
And QR Code Valid to Use

Scenario: Verify User Able Login With QR
Given User Not Logged in Before
And User Open Whatsapp Desktop App
When User Given QR Code
And User Able to scan with their Whatsapp mobile App
Then User Logged in with same number as their Whatsapp mobile app

Scenario: Verify Existing Chat Able to Load
Given User Have Been Logged in
And User have been conversation in their whatsapp mobile before
When User Logged In to Whatsapp Desktop App
Then User Able to see their existing conversation from whatsapp mobile app

Scenario: Verify User Able to Start New Conversation
Given User Already Logged in
When User Click Menu New Chat
And User User Able to see Modal/Popup List Of Name from their contact
And User Click 1 Contact from list with no conversation before
Then New Conversation Started with blank dashboard

Scenario: Verify User Able to load existing conversation
Given User in existing conversation
And Conversation Has been Started before
When User Scroll Down Into Oldest Conversation
Then User Able to see old conversation

Scenario: Send Button Functionality
Given User in a conversation
When User Type Message in form Message
And User Click Send Button
Then Form Message Get blank
And The Message Show up on dashboard

Scenario: Verify User able to receive Message
Given User in a conversation
When Another User Send A Message to you
Then The Message Show up on dashboard

Scenario Outline: Verify Message Status
Given User in a conversation
When Another user who receive a message is '<action>'
Then Message Status is '<status>'
Examples:
    | action                                | status                          |
    | not open whatsapp                     | one ceklist                     |
    | open whatsapp but not read message    | double ceklist with grey colour |
    | read the message                      | double ceklist with blue colour |

Scenario: Verivy User Able to Delete Message
Given User in a conversation
And User send a message
When User hold a message
And modal/popup show up
And User Click Delete Message
And modal/popup Delete message show up
And user click delete for everyone
Then the message changes into 'You delete this message'

Scenario: Verify User Able to Upload Document
Given User in a conversation
When User click menu attachment file
And modal/popup file manager show up
And User select the file
And User click send the file
Then the file show up on dashboard