# Cart Cop

A Claude Code skill that makes you defend a purchase before it approves one.

Most budgeting tools record a purchase after it happens. This one gets in the way beforehand. It
asks what exact task your current gear is failing at, checks the answer against what you already
own, and prices the buy as a delay to a goal you named yourself.

Grounded in Morgan Housel's *Psychology of Money*. It is not an automatic no. If something genuinely
solves an active bottleneck and is built to last, it says yes.

## Install

```
/plugin marketplace add jainulabudeenm/cart-cop
/plugin install cart-cop
```

## Use

Just say what you want to buy.

```
> I want to buy a new mechanical keyboard.
```

On first run it interviews you once, five short questions, and saves a profile to
`~/.claude/cart-cop/profile.md`: what you own, what you are circling, and what you are saving for.
Everything after that is instant.

Re-run `/cart-cop-init` any time to update it.

## What it actually does

Three rules it will not bend:

- **The Forecasting Error.** Buying specs for who you think you will be in three years is a
  mathematical error, not foresight.
- **The Struggling Test.** The only valid reason to upgrade is that your current tool is failing
  you today. Not soon. Today.
- **The Aging Gear Clause.** Age is not a failure state. Slow is not broken. Old gear has to be
  proven functionally broken, not merely old.

And the part that does the real work: every rejection converts the price into a delay to a specific
goal from your profile. "This is 320 dollars, which is five weeks added to your emergency fund" is
harder to argue with than "you do not need it".

One item at a time. It will refuse to discuss a list, because a batch discussion is how three
purchases get approved on the strength of one good argument.

## The profile

`~/.claude/cart-cop/profile.md`, in your home directory rather than a project folder, so it cannot
end up in a git repo by accident. It is plain markdown. Open it and edit it whenever you like.
See `profile.example.md` for the level of detail that produces useful verdicts.

The skill also offers to update the profile as it learns, so it gets sharper the longer you use it.

## Not for

Investment advice, retirement modelling, or budgeting. It reasons about one purchase against goals
you already set. It does not set them.

## License

MIT
