# Info on the `C` syntax files
- The `cCustomAccessKey` group is linked to `attribute`, maybe make a group for
    it and atleast have it linked to `attribute` if not be its own color.
    `cCustomAccessKey` is used to highlight *modifiers* for `cpp` files.
    Example:  `private`, `public`
- `cCustomAngleBrackets` is kind of really strange.  
  ```cpp
  namespace {
  typedef std::unique_ptr<TF_Function, decltype(&TF_DeleteFunction)>
      UniqueFuncPtr;
  }
  ```
  The text inbewteen the angle brackets are what is highlighed.
- `cCustomBrack` highlights `<<` in `cpp` files.
- `cCustomMemVar` is linked to `member` as it is a *member* of a `structure`
- `cCustomScope` is simply the `::` that separte `namespaces` in `cpp` files.
- `cOperator` highlights `sizeof` and I wouldn't *exactly* say that `sizeof` is
    an operator.  I would say it is more of a *builtin* function.  I
    `cOperator` linked to `command` because that was the first thing that I
    could think of that would be the closest match.  I'm not really happy with
    the choice though.
