extends Node

var good = {
	"AFFECTIONATE": ["affectionate", "compassionate", "friendly", "loving", "open hearted", "sympathetic", "tender","warm"],
	"ENGAGED": ["engaged", "absorbed", "alert", "curious", "engrossed", "enchanted", "entranced", "fascinated","interested", "intrigued", "involved", "spellbound", "stimulated"],
	"HOPEFUL": ["hopeful", "expectant", "encouraged", "optimistic"],
	"CONFIDENT": ["confident", "empowered", "open", "proud", "safe", "secure"],
	"EXCITED": ["excited", "amazed", "animated", "ardent", "aroused", "astonished", "dazzled", "eager", "energetic","enthusiastic", "giddy", "invigorated", "lively", "passionate", "surprised", "vibrant"],
	"GRATEFUL": ["grateful", "appreciative", "moved", "thankful", "touched"],
	"INSPIRED": ["inspired", "amazed", "awed", "wonder"],
	"JOYFUL": ["joyful", "amused", "delighted", "glad", "happy", "jubilant", "pleased", "tickled"],
	"EXHILARATED": ["exhilarated", "blissful", "ecstatic", "elated", "enthralled", "exuberant", "radiant", "rapturous","thrilled"],
	"PEACEFUL": ["peaceful", "calm", "clear headed", "comfortable", "centered", "content", "equanimous", "fulfilled","mellow", "quiet", "relaxed", "relieved", "satisfied", "serene", "still", "tranquil", "trusting"],
	"REFRESHED": ["refreshed", "enlivened", "rejuvenated", "renewed", "rested", "restored", "revived"]
}
var bad = {
	"AFRAID": ["afraid", "apprehensive", "dread", "foreboding", "frightened", "mistrustful", "panicked", "petrified","scared", "suspicious", "terrified", "wary", "worried"],
	"ANNOYED": ["annoyed", "aggravated", "dismayed", "disgruntled", "displeased", "exasperated", "frustrated","impatient", "irritated", "irked"],
	"ANGRY": ["angry", "enraged", "furious", "incensed", "indignant", "irate", "livid", "outraged", "resentful"],
	"AVERSION": ["aversion", "animosity", "appalled", "contempt", "disgusted", "dislike", "hate", "horrified", "hostile", "repulsed"],
	"CONFUSED": ["confused", "ambivalent", "baffled", "bewildered", "dazed", "hesitant", "lost", "mystified", "perplexed", "puzzled", "torn"],
	"DISCONNECTED": ["disconnected", "alienated", "aloof", "apathetic", "bored", "cold", "detached", "distant", "distracted", "indifferent", "numb", "removed", "uninterested", "withdrawn"],
	"DISQUIET": ["disquiet", "agitated", "alarmed", "discombobulated", "disconcerted", "disturbed", "perturbed", "rattled", "restless", "shocked", "startled", "surprised", "troubled", "turbulent", "turmoil", "uncomfortable", "uneasy", "unnerved", "unsettled", "upset"],
	"EMBARRASSED": ["embarrassed", "ashamed", "chagrined", "flustered", "guilty", "mortified", "self-conscious"],
	"FATIGUE": ["fatigue", "beat", "burnt out", "depleted", "exhausted", "lethargic", "listless", "sleepy", "tired","weary", "worn out"],
	"PAIN": ["pain", "agony", "anguished", "bereaved", "devastated", "grief", "heartbroken", "hurt", "lonely","miserable", "regretful", "remorseful"],
	"SAD": ["sad", "depressed", "dejected", "despair", "despondent", "disappointed", "discouraged", "disheartened","forlorn", "gloomy", "heavy", "hearted", "hopeless", "melancholy", "unhappy", "wretched"],
	"TENSE": ["tense", "anxious", "cranky", "distressed", "distraught", "edgy", "fidgety", "frazzled", "irritable","jittery", "nervous", "overwhelmed", "restless", "stressed out"],
	"VULNERABLE": ["vulnerable", "fragile", "guarded", "helpless", "insecure", "leery", "reserved", "sensitive","shaky"],
	"YEARNING": ["yearning", "envious", "jealous", "longing", "nostalgic", "pining", "wistful"]
}
