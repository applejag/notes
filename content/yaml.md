---
date: July 31, 2023
---

# YAML

```yaml
YAML: YAML Ain't Markup Language™
```

## Version differences

| Feature                           | YAML 1.1 | YAML 1.2 |
| -------                           | -------- | -------- |
| Booleans "on/off" & "yes/no"      | ✅       | ❌
| Octals "0700"                     | ✅       | ❌
| Octals "0o700"                    | ❌       | ✅
| Base-60 (sexagesimal) "190:20:30" | ✅       | ❌
| Underscores in numbers "1_2_3"    | ✅       | ❌

Nice website comparing v1.1 & v1.2: <https://perlpunk.github.io/yaml-test-schema/schemas.html>

## Weird syntax

### Null

```yaml
a: null
b: !!null null
c:              # empty also means null
d: ~            # tilde also means null
```

### Sets

```yaml
a: { x, y, z }
b: { x:, y:, z: }
c: { x: null, y: null, z: null }
d:
  ? x
  ? y
  ? z
```

## Cool facts

- Their website is YAML: <https://yaml.org>
