---
title: "Learning with AI"
date: 2025-05-02
_build:
  list: never
sitemap:
  exclude: true
---

[![@sama: if you are not skillsmaxxing with o3 at minimum 3 hours every day, ngmi](/images/sama-skillsmaxxing.png)](https://x.com/sama/status/1915826042729861357)

About a month ago I [quit my job as an engineering manager at Shopify](https://x.com/dirceu/status/1903238828082487642) because I wanted to take some time to go deeper on LLMs. "Going deeper on LLMs" is hand-wavy on purpose: I wanted to explore a bunch of different things—developer experience, safety, interpretability, even the fundamentals of neural networks and deep learning. At a meta level, I also wanted to use LLMs 10x more throughout my day to find out how I can use them more effectively and what are the friction points I could explore in prototypes or research.

Lately, I got into a nice groove of spending a few hours every single day (7 days a week) learning different things. This post is a snapshot of my current process.

I don't use this full process for everything, but found it to be very useful when trying to learn something completely new or to go deeper into something I only know superficially. This is more about diving into areas like fine-tuning or neural network interpretability in a practical way such that I get *employably competent* at it.

### Before we go into that: "consuming" content doesn't work for learning

This is the most important point about all this, more important than any individual tactic. Andy Matuschak's essay [Why books don't work](https://andymatuschak.org/books) explains this very well, and Andrej Karpathy [echoes the main point of it](https://x.com/karpathy/status/1756380066580455557): **if "learning" feels effortless, you're *probably* not really learning**.

We don’t **really** learn or understand something just by listening to a lecture, reading a book, or watching a video. *Real* learning, *real* understanding comes from actively engaging with the content.

We might _feel_ like we got a good grasp on a concept, and we might be able to even recite a definition about it if someone asks, but this is (in most cases) a rather superficial “understanding” that breaks even with just a little bit of probing—a follow-up question or the need to use the concept in practice in a work-related task, for example.

_(Sure, repeated exposure to topics might help you understand things over time and do pattern-matching, but what I'm talking about here is building tacit knowledge—the kind of understanding you gain through experience, the stuff that's hard to write down but essential for practical application.)_

How does one engage with content? Some examples include:

- Using it in practice
- Sketching something
- Creating a flow diagram
- Explaining to a 5 year-old
- Writing about it
- Talking about it
- Doing active recall on it
- Committing it to long-term memory using spaced repetition (e.g. flashcards on Anki)

### How LLMs can help

The naive way of using LLMs for learning is to ask, say, Claude to explain something to you or even to generate flashcards. That's still too passive and essentially effortless.

This is roughly the process I go through when I'm trying to learn what can be broadly described as a skill (say, fine-tuning).

I'm using [SuperWhisper](https://superwhisper.com/), [ChatGPT](https://chatgpt.com/), and (occasionally) [NotebookLM](https://notebooklm.google/) in this process. To read more about the AI tools I use, check out [this post](/posts/2025-04-24-my-ai-setup/).

#### Phase 1: Exploring

First, I want to get a "birds-eye view" on the subject—let's stick to fine-tuning as an example.

Here's what I do:

1. Collect any links that I already have to papers, videos, blog posts, tweets, etc that might serve as context
1. Do a brain dump by talking for 3-5 minutes about my current understanding of what fine-tuning is and what it's used for, my practical experience with it, what I'm trying to learn and why
1. At the end, say _"summarize what I just told you, and then interview me: ask as many questions as you want in order to really get at what I'm trying to learn or do, as I might not be clear on that myself"_ †
1. Answer most/all questions, then ask it to generate a prompt for Deep Research
1. Use Deep Research to get the lay of the land

At this point I have a report that takes me 20-40 minutes to read, sometimes more. I use [Readwise Reader](https://readwise.io/read) to read those reports on an iPad, usually laying on the couch or in bed—I can't sit still long enough to read in my desk. I might also (or instead) paste it into NotebookLM and generate an audio overview to listen to while walking.

I usually don't follow most links it gives me: I'm only trying to get a high-level picture and figure out what are the known unknowns.

#### Phase 2: Refining

Things might still be fuzzy in my head, so I do another brain dump by talking. I say something like: _"OK I'm gonna repeat back to you what I understood, and also try to mention all the things that are still unclear"_. As I try to explain, the act of explaining surfaces what is unclear, and (usually) at least a few questions.

I get my answer and then do a bit of back-and-forth to clarify things. This might go for a while!

Every now and then I might do another brain dump or even restart the entire process if we went in a direction that doesn't seem particularly interesting or aligned with what I'm looking for (and at this point, o3 already helped me refine much more precisely what I'm looking for).

#### Phase 3: Taking action

This is the coolest part.

I start by asking o3 to generate me 10-30 "micro-drills", practical exercises that take somewhere between 15 and 60 minutes. I go for volume because I can always pick a much smaller subset based on what's more interesting and/or unclear.

These micro-drills will typically show up as prompts like this:

>	**Micro fine‑tune embeddings (30 min)**
>	
>	- Create 20‑30 (question, positive doc, negative doc) triples (fast manual copy‑paste).
>	- Fine‑tune `all‑MiniLM‑L6` for one epoch.
>	- Re‑index and show improved `MMR@3` compared to baseline.

If I don't understand the problem, I'll ask o3 follow-up questions. If I have most of what I need, I then jump to Cursor and will continue from there.

In Cursor I try to do many things ~manually but will rely on the Agent (typically using Gemini 2.5 Pro) to do anything that's boring and doesn't really bring me value (fix this dependency conflict, generate synthetic data for XYZ, etc).

After I get it done, I usually play around with the script: change some parameters, try variations to see what improves or degrades, etc. I also ask the Agent for two things:

1. Give me feedback on the script based on what I'm trying to do: this helps me learn what could be better
1. Create the shortest possible version of the same script, removing any nice-to-have's: this helps me learn what I could have done more efficiently *or* what are the most critical parts of the problem

With this done, I try to come up with questions by myself. What are the implications of fine-tuning an embeddings model like `all-MiniLM-L6` vs fine-tuning something like `llama3.3`? What are the pros and cons? Can I script out variations of the same RAG application using fine-tuned versions of each? What could I do to make it overfit?

I then go to o3 and say *"I've done it, here's my solution. Here are some questions I came up with afterwards. Don't answer those questions, just tell me: what am I missing? What other questions are more important or impactful to what I'm trying to do or learn here? What are my unknown unknowns?"*

Then, I continue exploring with o3, Cursor, and sometimes even Googling (*gasp!*) things.

As I learn all this, I usually also write [Anki](https://apps.ankiweb.net) flashcards to commit things to memory. I try not to overuse it, but I've found it to be helpful: active recall, actually testing yourself is incredibly useful for learning and retention. See more [here](https://gwern.net/spaced-repetition).

### Bonus: Custom Instructions and prompt snippets

Some friends asked me to share prompts, but I do a **ton** of my LLM usage via voice in a very unstructured, verbose way: I yap until I get tired. Models are incredibly capable nowadays!

Still, there are sentences I find myself repeating in multiple occasions, as well as some sentences that I found helpful to add to my Custom Instructions.

#### Custom Instructions

Be opinionated, push back, and ask questions that help me think about things in a different way.

Don't worry about formalities.

When learning new concepts, I find analogies and concrete examples particularly helpful.

If I ask you to create Anki cards, make sure to:
- Only use Basic (front/back) and Cloze deletion as formats.
- Format the response to make it extra easy to copy-paste into Anki.
- Break things down as much as possible. I'd rather have 15 different cards for a single concept (if they're all atomic and exploring different facets of it, or different relationships between it and other things) than one gigantic card.
- For Basic cards, always phrase the title as a question.

When I prompt you with the single word "GENSUM", this indicates that I want you to generate a summary of the conversation to this point as an artifact, which I will use in later conversations. I want you to include as much detail as possible that could be useful to reference later. The artifact title should be "Chat GENSUM <iso 8601 date> [(<index>)]" -- for example, "Chat GENSUM 2020-01-01" and then "Chat GENSUM 2020-01-01 (1)". _(pretty sure I got this one from [Burke](https://x.com/burkelibbey))_

#### Sentences or questions I use often

- This is what I understood: tell me where I'm wrong.
- These are all the things I know I don't know. What else am I missing?
- Summarize what I just told you, and then interview me: ask as many questions as you want in order to really get at what I'm trying to learn / do.
- Explain this in increasing levels of complexity (e.g. 12 years old, undergrad, PhD).
- Help me visualize this with Canvas / with an Artifact.
- What else should I be asking about this subject?

### Conclusion

I'm still evolving this process—trying to make it more streamlined in a way, without removing the effortful parts that are useful for learning. Using AI has drastically accelerated the speed by which I learn new ideas, concepts, and skills; I feel more capable and most importantly: I'm having **a lot** of fun.

If you have any thoughts or ideas for how I can improve this, let me know!

† _[How to Read a Book](https://fs.blog/how-to-read-a-book/) is an excellent tool for anyone that reads a lot for understanding (as opposed to for entertainment). One of the main lessons that stuck with me is that you should **always** read with a particular goal or problem in mind, which makes your actions more intentional, focused, and results-oriented. This is extremely useful in the world of LLMs._

_Thanks to Hernan Maydac Jean, Damian Schenkelman, and Alexandre Terrasa for their feedback._