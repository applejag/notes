---
date: August 07, 2023
---

# German school system

```mermaid
flowchart TB
    Kita --> Kindergarten --> Grundschule
    Grundschule --> Hauptschule & Realschule & Gesamtschule & Gymnasium
    Hauptschule & Realschule --> Berufschule
    Gesamtschule & Gymnasium --> Universität

    Berufschule --> Berufschule-arbeit
    subgraph Berufschule-arbeit
        Friseur*in
        Polizist*in
        Verkäufer*in
        Mekaniker*in
    end

    Universität --> Universität-arbeit
    subgraph Universität-arbeit
        Lehrer*in
        Arzt/Ärztin
        Anwalt/Anwältin
    end
```
