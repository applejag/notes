---
date: January 1, 2021
---

# OAuth 1.0 vs 2.0 vs 2.1

> OAuth 1.0 is complicated. OAuth 2.0 shouldn't maybe be as praised as it is.
>
> - Dominick Baier and Brock Allen (guests on ".NET Rocks!" podcast episode 1722)

## OAuth 1.0 to 2.0

To simplify, comparing OAuth 1.0 and OAuth 2.0 and roughly be done with the
following points:

- OAuth 1.0 is more secure than OAuth 2.0, some of which is thanks to
  OAuth 1.0's "Proof of possession" (in short: the proof of possession sealed
  the attack vector of getting your token into the wrong hands and used
  without your permission.)

- OAuth 1.0 is more convoluted (less simple), than OAuth 2.0

## OAuth 2.1

Development of OAuth has been at a standstill up until recently.
OAuth 2.1 is at the horizon and promises to resolve some of the issues with OAuth 2.0.

What OAuth 2.1 brings to the table:

### The wording

The sophisticated language and nomenclature used in OAuth 1.0 was unbearable for
the average developer. OAuth 2.0 did a much better job with its collection of
implementation samples, but it still had quite a learning curve in its language.

OAuth 2.1 is promised to use a more common wording scheme to better allow
non-native English speakers to have an easier time understanding what the
protocol actually does.

### Proof of possession

OAuth 2.1 is promised to let the proof of possession do a comeback, as well as
simplifying it to the point that it's easier to implement, yet still keep its
core security concerns.

### Removal of implicit and ROPCG flows

- "Resource Owner Password Credential Grant flow"
- Basically sending the users password around.
- OAuth aimed to remove this from the world.
- It existed in the specification as a fallback, though an insecure one at that.
- Most authentication providers does not even support this flow.
- OAuth 2.1 is promised to remove it completely from the specifications.
- "Implicit flow", which is used by most Single Page Applications (SPA) today, is promised to be removed as well, as it has some serious security holes.

## References

- Cambell, R. & Franklin, C.. (Hosts). (2021, January 14). *IdentityServer Update
  with Dominick Baier and Brock Allen* (No. 1722) [Audio podcast episode].
  In *.NET Rocks!*. vNext. <https://www.dotnetrocks.com/?show=1722>
