#!/usr/bin/env python3
"""Mechanical draft checks for yt-to-blog deliverables.

Usage: python3 check_draft.py <draft.md>

Exit 0 = all checks pass. Exit 1 = at least one FAIL (fix before presenting).
These checks are deterministic — they verify shape, not quality. The auditor
pass and Wanda's read do the judgment work; this script kills the failure
modes that have actually happened: leaked internal blocks, missing receipts,
retired offer strings, unbacked prices, age labels, non-question headings.
"""
import re
import sys

def main(path):
    text = open(path, encoding="utf-8").read()
    results = []

    def check(name, ok, detail=""):
        results.append((name, bool(ok), detail))

    m = re.search(r"=====\s*PASTE-READY BODY[^=]*=====\n(.*?)\n=====\s*END PASTE-READY BODY", text, re.S)
    check("Section A markers present", m)
    body = m.group(1) if m else ""

    if body:
        leaks = [k for k in ("OFFER SOURCE", "RESEARCH RECEIPTS", "- [x]", "Concept prompt", "TRACKER FIELDS") if k in body]
        check("Section A free of internal blocks", not leaks, "leaked: %s" % leaks if leaks else "")

        paras = [p.strip() for p in body.split("\n\n") if p.strip() and not p.strip().startswith("#")]
        if paras:
            wc = len(re.findall(r"[\w$%'’-]+", paras[0]))
            check("Direct answer 40-60 words", 40 <= wc <= 60, "%d words" % wc)

        h2s = re.findall(r"^## +(.+?)\s*$", body, re.M)
        bad = [h for h in h2s if not h.rstrip("*").strip().endswith("?")]
        check("Every H2 in body is a question", not bad, "non-question: %s" % bad if bad else "%d H2s" % len(h2s))

        check("Key Takeaways present as H3", re.search(r"^### +key takeaways", body, re.M | re.I))

        dollars = sorted(set(re.findall(r"\$\d[\d,]*", body)))
        if dollars:
            check("Body $ amounts backed by an OFFER SOURCE block", "OFFER SOURCE" in text, "in body: %s" % dollars)

        ages = re.findall(r"55\s*[–-]\s*65|\b\d{2}\s+years?\s+old\b", body)
        check("No age labels in body", not ages, str(ages) if ages else "")

        faq_qs = re.findall(r"^### +.+\?\s*$", body, re.M)
        check("FAQ present (>=3 question H3s)", len(faq_qs) >= 3, "%d found" % len(faq_qs))

    scrub = text.replace("retired-trap check passed", "")
    traps = [t for t in ("Messaging Made Easy", "$97", "Pick My Brain", "Pick-My-Brain") if t in scrub]
    check("No retired offer strings anywhere", not traps, "found: %s" % traps if traps else "")

    receipts = re.findall(r"\[[^\]\n]*?\.md[^\]\n]*?→[^\]\n]+\]|\[SEND A LINK[^\]\n]*?→[^\]\n]+\]", text)
    check("Receipts: 3-7 shaped [file → finding]", 3 <= len(receipts) <= 7, "%d found" % len(receipts))

    failed = [r for r in results if not r[1]]
    for name, ok, detail in results:
        line = ("PASS  " if ok else "FAIL  ") + name
        if detail:
            line += "  (%s)" % detail
        print(line)
    print("\n%d/%d passed" % (len(results) - len(failed), len(results)))
    sys.exit(1 if failed else 0)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print(__doc__)
        sys.exit(2)
    main(sys.argv[1])
