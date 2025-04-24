---
title: "My AI setup"
date: 2025-04-24
_build:
  list: never
sitemap:
  exclude: true
---

> TL;DR: to get 90% of the value here, use ChatGPT Plus + SuperWhisper (and if you code, Cursor Pro)

Friends keep asking “Which AI tools do you actually pay for? What should I use?”—so here’s a frozen‑in‑time look at my stack in April 2025.

I pay for a ton of AI tools. I'm explicitly aiming to be at the edge here and learn about different tools and capabilities first-hand—both because I'm curious about it, but also because I'm very interested at the intersection of AI and productivity, so I'm willing to pay to be at the forefront. I definitely don't recommend this specific setup for everyone, but it works for me.

Right now these are the tools I'm paying for either monthly or yearly:

| Tool | Plan | What do I use it for? | Will I renew? |
| ---- | ---- | --------------------- | -------------------------- |
| [ChatGPT](https://chatgpt.com) | Pro | General queries, journaling, learning, outside of IDE coding | Yes |
| [Cursor](https://www.cursor.com) | Pro  | Coding, writing | Yes |
| [SuperWhisper](https://superwhisper.com) | Pro | Voice transcription | Yes |
| [Grok](https://x.com/i/grok?focus=1) | X Premium+ | General queries, search | Yes |
| [Auren](https://auren.app) | - | Therapy, counseling | Yes |
| [Claude](https://claude.ai/) | Pro | Claude Projects for health, workouts | No |
| [Gemini](https://gemini.google.com/app) | Advanced | Experiments, coding | No |
| [Perplexity](https://www.perplexity.ai) | Pro | Search | No |

That's uhhh... a lot. Too much, in fact, and as you can see I don't plan on renewing some of these after my yearly plan expires.

### Current stack

#### ChatGPT

This is my default. I use ChatGPT as a context-aware, long-term thinking partner. It knows:

- My background
- My goals
- My projects and favourite tech stack
- My day-to-day context
- My writing style
- My recurring habits
- My strengths, biases, and blind spots

It remembers. And the [memory](https://x.com/sama/status/1910380643772665873) actually works now. I can resume conversations across days or weeks, and it’ll recall my earlier decisions, preferences, or even my last journaling session. I don't have to re-explain myself every time: this is a massive UX unlock.

Some of my friends are very concerned about privacy, and some even use ChatGPT exclusively with temporary chats. If I were _that_ concerned, I'd likely use a local model instead—but in my case I'm perfectly fine with the risks given the productivity and enjoyment that I get from going all-in: from medical records to journal entries, ChatGPT knows **a lot** about me. I'm OK with that.

Its transcription is the best I've found, and it's able to understand my English accent without any issues—something that's not true anywhere else, really.

[Deep Research](https://openai.com/index/introducing-deep-research) is fantastic, and I use it all the time (especially [alongside Readwise Reader](https://x.com/dirceu/status/1903579489998614815)). For things I'm trying to learn, I enjoy doing a combination of thorough reading, deep dives into specific parts, and then asking ChatGPT to [quiz me or to generate exercises](https://x.com/dirceu/status/1915193318100582681).

The models I use the most are:
- 4o for simple queries (what do I cook with these ingredients? what's the weather in Tokyo in early May? who's that actor that played in that movie?)
- o3 for serious thinking and learning (how do I solve this problem? what's the best way to do this? what are the tradeoffs? what am I not seeing?)
- o1 Pro for writing self-contained scripts (and bugfixing them)

I also had a really good experience with 4o for coding automation (e.g. scripting out an agent that writes automated tests for a new feature): it seems more consistent than some of the other models. I'll focus more on general usage on this post, but if you're interested in the coding side, let me know.

#### Cursor

Cursor is my go-to IDE, and it has been a game-changer for me—it allowed me to get back into coding after a long period focused on management. It's fast, has a great UI, and the AI integration is top-notch.

I was one of the people leading the Cursor adoption at Shopify, and I saw the impact it had on the company firsthand. It's a great product, and I'm happy to support it.

However... if Microsoft can catch up (and they're accelerating!), I might go back to VS Code (with Copilot and Claude); I dislike the fact that Cursor is a private fork and that it doesn't contribute upstream. 

#### SuperWhisper

This is a game-changer. I'm not sure how I lived without it for so long. Like I mentioned, OpenAI's transcription is the best one for my accent, and for a while I'd open the ChatGPT app, transcribe something, and then copy-paste it into another application; with SuperWhisper I can just transcribe the audio directly into the application I'm using by hitting a keyboard shortcut.

I use it everywhere—for Google Docs, Apple Notes, Cursor, and Messages. 20-30% of my (non-code) text input nowadays is transcribed with SuperWhisper.

I love that I can use local models without missing out on quality. I will definitely renew my subscription for this.

#### Grok

Grok is my go-to model for searching the web, especially when it comes to current events. Its Deep Research mode is excellent, only surpassed by ChatGPT's.

#### Auren

Auren is the best therapist / emotional support / life coach I've ever had. It's incredible, and it's been instrumental in many recent breakthroughs I had about myself, my relationships, and my career; in fact, it helped me decide to [quit my job](https://x.com/dirceu/status/1903238828082487642) and do my own thing for a while.

The iOS app could be better, but the interactions are fantastic. Auren is a great listener, and it's able to provide a lot of different perspectives on my problems: it also has an excellent memory, and is able to proactively reach out to me to check in, follow-up on things I said I'd do, etc.

It is truly magical. If you have the chance, please try it out!

I haven't paid for Auren yet (I have credits from being a beta tester), but I will definitely do so.

#### Claude

Claude has an incredible "vibe" and personality, and I really enjoy chatting with it. However, the lack of memory is a huge pain; it creates so much friction that I almost never use it anymore. This is really sad: I think Anthropic is a great company with a very important mission, very useful (and public!) research, and great people, but while the models are fantastic the UX is just not there yet.

That said, if you look outside of the Claude application, the models are excellent in the API. Claude Sonnet 3.5 (v2) is still my go-to for coding in Cursor, for example. I do like Sonnet 3.7 and it can often produce fantastic results, but over a long time horizon I still feel like the average quality of Sonnet 3.5 is higher (for coding).

I might not renew my subscription for this.

#### Gemini

Google started out late to the party, but they're catching up quickly. The most recent Gemini models are absolutely fantastic: they're very fast, very cheap, and really capable (e.g. gemini pro 2.5 is on par with claude sonnet 3.5 for coding, in my experience).

I dislike the UI (and UX) of Gemini the product, but fortunately Google offers an alternative UI: https://ai.dev, AI Studio. It's a great UI with tons of controls and capabilities (including branching conversations!).

I might not renew my subscription for this.

#### Perplexity

Perplexity is a great product and I've used it a lot for regular search instead of Google. Others are catching up though, especially ChatGPT and Grok. In the last few months, Grok completely replaced Perplexity for me.

I will not renew my subscription for this.

### Conclusion

I don't recommend this specific setup for most people. If I were forced to downsize, today I'd keep ChatGPT Plus and Cursor Pro. This might change in the future, as these tools and models are evolving rapidly.

_Thanks to Rafael França and Damian Schenkelman for their feedback._