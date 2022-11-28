<style>
g { color: #1ca64c }
b { color: #209cee }
o { color: #e67e22 }
r { color: #ff5338 }
pr { color: #375a7f }
</style>

# Tensions

## Definition

Twitter use tweets, Gmail use e-mails, Fractale use tensions. A tension is a general communication object that is akin to an email and can be sent to any circle in Fractale. They are particularly suit to share, track and keep record of tasks, issues, ideas or questions.
Philosophically, a tension is defined as the distance between where you are and where you want to be.
A tension belong to a certain type according to the problem to deal with. There are five different types:

* **<g>Operational</g>**: A general category of tension for everyday activities. it could be a task, an issue or whatever that needs to be share in an organization.
* **<b>Governance</b>**: For topics related to governance, organizational structure, mandates, etc.
* **<o>Help</o>**: For help requests, questions or clarifications.
* **<r>Alert</r>**: For alert requests, internal communication.
* **<pr>Announcement</pr>**: For announcement, external communication.

Each tension type has a notification policy and an access policy which limit respectively who will be notified at tension creation and who can do it.

Furthermore, tensions can be closed when they are solved, or reopen if needed. Closed tensions are not visible in default view, yet they can be searched and displayed.

User-defined labels can be attached to it which gives visual hints and filtering capabilities. 

Users can be assigned to tensions if they are in charge of them.

## Notifications

When a tension is created, notifications will be sent to a set of user which depends on the type of tension created:

- For **Operational**, **Governance** and **Help** tensions, notifications will be sent to users who have a role (lead link) in the targeted circle.
- For **Alert** tensions, notifications will be sent to all members below the targeted circle (including all sub-circles recursively). If the recipient is the root circle, all member including [Guest](/circle/#guest) will be notified. Otherwise, this will include the roles lead links.
- For **Announcement** tensions, notifications will be sent to all users that watch the organization.


Once a tension is created, it has a discussion thread with a list of subscribed users. Users can subscribe or unsubscribe to a tension if they have read access to it. A subscribed users will be notify of new comments or status changes. At tension creation only its author is subscribed by default.
