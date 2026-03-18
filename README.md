# Schulpulse Context Engineering

## Overview 
In Kenyan private primary and secondary schools, parent-teacher communication gaps — exacerbated by parents' limited understanding of the Competency-Based Curriculum (CBC), manual messaging overload, missed announcements, and inaccessible updates — lead to low parent engagement, student indiscipline, and declining academic achievements. School admins and teachers waste hours on calls and chases, while parents struggle with work conflicts, data issues, and school operational changes. SchulPulse, an AI-powered WhatsApp bot, addresses this by enabling 24/7 automated pushes of announcements, schedules, report cards, alerts, and FAQ answers — streamlining communication between parents and teachers/school administrators.

## Context Engineering Approach
I created SchulPulse to use a four-layer context architecture designed to deliver accurate, bilingual, school-specific responses within the constraints of a normal WhatsApp conversation interface.
### System instructions/The identity layer 
The system prompt establishes:
1. SchulPulse's identity and role - 
2. SchulPulse's language and behavioural traits -
3. SchulPulse's hard constraints -
4. SchulPulse's oparational directives -
### Dynamic context layer
At SchulPulse runtime, the student's record is retrieved from Google Sheets via Make.com and injected as a structured plain-text block as a reply to the user message. Plain text was chosen over JSON to reduce token consumption and improve model reliability on field extraction
### Session History/memory layer
The last four exchanges of the WhatsApp conversation are included in each API call to maintain continuity without exceeding the token budget allocated to this layer. Older exchanges are dropped rather than summarised, as parent queries are typically resolved within two or three exchanges
### Output/Response context layer
Output instructions limit responses to approximately 100–150 words and prohibit markdown formatting, as WhatsApp renders asterisks and pound signs as literal characters. Responses must end with a clear next step or question to keep the conversation moving toward resolution

This layered architecture separates stable identity rules (system prompt) from dynamic runtime data (retrieval), enabling the system to serve multiple schools from a single Claude API integration by simply swapping the retrieved data context.


## Tech Stack (Claude API | Make.com | Google Sheets | WhatsApp via ManyChat)

## Repo Structure (link to each folder with one-line description)

## Key Design Decisions (3–5 bullet points: your most interesting engineering choices)

## Outcomes / Results (quantitative if possible: e.g. 80% reduction in manual messages)

## About the Author (your background, link to LinkedIn)
My name is Gituru Mwai, a UI designer with 10 years experience and AI Product and Prompt Engineer

## Licence

This repository was connected dynamically via an auto-sync PowerShell script.