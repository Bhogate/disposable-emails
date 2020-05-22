# Disposable Emails Checklist
A collection of disposable / temporary emails that people use while registering on a service provider's website.

# Is this comprehensive ?
This repo accepts pull requests, and keeps adding sites / domains that provide disposable emails.

# Whom does this benefit ?
Both, for providers who want to block and the users who want to get some random dispoable email. It's upto the usage.

# How to check if an email is a disposable email or not ?
Make a HEAD request to the following endpoint.

[https://bhogate.github.io/disposable-emails/`<FIRST_LETTER>`/`<EMAIL_DOMAIN>`](https://bhogate.github.io/disposable-emails/)

### URL Construction
- Trim all the whitespaces
- Split the email with `@` eg. `email@provider.com`
- Get the First character of the provider domain eg. for `example.com` the first charater is `e`
- The full URL to check looks like
   - `https://bhogate.github.io/disposable-emails/e/example.com`
   - `https://bhogate.github.io/disposable-emails/a/awesome-email-example.com`
   - `https://bhogate.github.io/disposable-emails/f/free-temporary-email.org`
   - etc

### Response Status
- __404__ : Not disposable
- __200__ : Disposable
