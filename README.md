# Disposable Emails
A collection of disposable / temporary emails that people use while registering on a service provider's website.

_Last updated - 22nd May, 2020_

# DISCLAIMER
THIS LIST IS BUILT OUT OF A COLLECTION FROM DIFFERENT SOURCES, AND DOESN'T GUARANTEE TO BE FULLY ACCURATE. SOME DOMAINS MIGHT GO LOW ON REPUTATION OVERTIME, WHILST SOME MIGHT GO HIGH. THE LIST MIGHT GET UPDATED, HOWEVER DEPENDS UPON THE AVAILBILITY OF SUCH SOURCES AND THE CONTRIBUTION THAT THE COMMUNITY MAKES. IF YOU ARE LOOKING FOR A MORE ROBUST AND ACCURATE SOLUTION, YOU MIGHT LOOK FOR SOME PAID SAAS BASED SERVICES. PLEASE USE AT YOUR OWN RISK

# Want to Add or Remove
Pull requests are welcome

# Is this comprehensive ?
This repo accepts pull requests, and keeps adding sites / domains that provide disposable emails.

# Whom does this benefit ?
Both, for those providers who want to block registration using disposable emails and the users who want to get some random disposable email. It's up to the usage.

# How to check if an email is a disposable email or not ?
Make a HEAD request to the following endpoint.

[https://bhogate.github.io/disposable-emails/api/`<FIRST_LETTER>`/`<EMAIL_DOMAIN>`](https://bhogate.github.io/disposable-emails/api/)

### URL Construction
- Trim all the whitespaces
- Split the email with `@` eg. `email@provider.com`
- Get the First character of the provider domain eg. for `example.com` the first charater is `e`
- The full URL to check looks like
   - `https://bhogate.github.io/disposable-emails/api/e/example.com`
   - `https://bhogate.github.io/disposable-emails/api/a/awesome-email-example.com`
   - `https://bhogate.github.io/disposable-emails/api/f/free-temporary-email.org`
   - etc

### Response Status
- __404__ : Not disposable
- __200__ : Disposable
