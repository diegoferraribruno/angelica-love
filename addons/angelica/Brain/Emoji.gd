extends Node2D
var icon = "1f600"
var mini = true

const emoji = {
	"1f600": {
		"code_points": {
			"base": "1f600",
			"non_fully_qualified": "1f600",
			"decimal": "&#128512;"
		},
		"name": "grinning face",
		"shortname": ":grinning:",
		"category": "people",
		"emoji_order": "1",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "smiley", "emotion"]
	},
	"1f601": {
		"code_points": {
			"base": "1f601",
			"non_fully_qualified": "1f601",
			"decimal": "&#128513;"
		},
		"name": "grinning face with smiling eyes",
		"shortname": ":grin:",
		"category": "people",
		"emoji_order": "2",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "silly", "smiley", "emotion", "good", "selfie"]
	},
	"1f602": {
		"code_points": {
			"base": "1f602",
			"non_fully_qualified": "1f602",
			"decimal": "&#128514;"
		},
		"name": "face with tears of joy",
		"shortname": ":joy:",
		"category": "people",
		"emoji_order": "3",
		"shortname_alternates": [],
		"ascii": [":')", ":'-)"],
		"keywords": ["happy", "silly", "smiley", "cry", "laugh", "emotion", "sarcastic"]
	},
	"1f923": {
		"code_points": {
			"base": "1f923",
			"non_fully_qualified": "1f923",
			"decimal": "&#129315;"
		},
		"name": "rolling on the floor laughing",
		"shortname": ":rofl:",
		"category": "people",
		"emoji_order": "4",
		"shortname_alternates": [":rolling_on_the_floor_laughing:"],
		"ascii": [],
		"keywords": []
	},
	"1f603": {
		"code_points": {
			"base": "1f603",
			"non_fully_qualified": "1f603",
			"decimal": "&#128515;"
		},
		"name": "smiling face with open mouth",
		"shortname": ":smiley:",
		"category": "people",
		"emoji_order": "5",
		"shortname_alternates": [],
		"ascii": [":D", ":-D", "=D"],
		"keywords": ["happy", "smiley", "emotion", "good"]
	},
	"1f604": {
		"code_points": {
			"base": "1f604",
			"non_fully_qualified": "1f604",
			"decimal": "&#128516;"
		},
		"name": "smiling face with open mouth and smiling eyes",
		"shortname": ":smile:",
		"category": "people",
		"emoji_order": "6",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "smiley", "emotion"]
	},
	"1f605": {
		"code_points": {
			"base": "1f605",
			"non_fully_qualified": "1f605",
			"decimal": "&#128517;"
		},
		"name": "smiling face with open mouth and cold sweat",
		"shortname": ":sweat_smile:",
		"category": "people",
		"emoji_order": "7",
		"shortname_alternates": [],
		"ascii": ["':)", "':-)", "'=)", "':D", "':-D", "'=D"],
		"keywords": ["smiley", "workout", "sweat", "emotion"]
	},
	"1f606": {
		"code_points": {
			"base": "1f606",
			"non_fully_qualified": "1f606",
			"decimal": "&#128518;"
		},
		"name": "smiling face with open mouth and tightly-closed eyes",
		"shortname": ":laughing:",
		"category": "people",
		"emoji_order": "8",
		"shortname_alternates": [":satisfied:"],
		"ascii": [">:)", ">;)", ">:-)", ">=)"],
		"keywords": ["happy", "smiley", "laugh", "emotion"]
	},
	"1f609": {
		"code_points": {
			"base": "1f609",
			"non_fully_qualified": "1f609",
			"decimal": "&#128521;"
		},
		"name": "winking face",
		"shortname": ":wink:",
		"category": "people",
		"emoji_order": "9",
		"shortname_alternates": [],
		"ascii": [";)", ";-)", "*-)", "*)", ";-]", ";]", ";D", ";^)"],
		"keywords": ["silly", "smiley", "emotion"]
	},
	"1f60a": {
		"code_points": {
			"base": "1f60a",
			"non_fully_qualified": "1f60a",
			"decimal": "&#128522;"
		},
		"name": "smiling face with smiling eyes",
		"shortname": ":blush:",
		"category": "people",
		"emoji_order": "10",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "smiley", "emotion", "good", "beautiful"]
	},
	"1f60b": {
		"code_points": {
			"base": "1f60b",
			"non_fully_qualified": "1f60b",
			"decimal": "&#128523;"
		},
		"name": "face savouring delicious food",
		"shortname": ":yum:",
		"category": "people",
		"emoji_order": "11",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "silly", "smiley", "emotion", "sarcastic", "good"]
	},
	"1f60e": {
		"code_points": {
			"base": "1f60e",
			"non_fully_qualified": "1f60e",
			"decimal": "&#128526;"
		},
		"name": "smiling face with sunglasses",
		"shortname": ":sunglasses:",
		"category": "people",
		"emoji_order": "12",
		"shortname_alternates": [],
		"ascii": ["B-)", "B)", "8)", "8-)", "B-D", "8-D"],
		"keywords": ["silly", "smiley", "emojione", "glasses", "boys night"]
	},
	"1f60d": {
		"code_points": {
			"base": "1f60d",
			"non_fully_qualified": "1f60d",
			"decimal": "&#128525;"
		},
		"name": "smiling face with heart-shaped eyes",
		"shortname": ":heart_eyes:",
		"category": "people",
		"emoji_order": "13",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "smiley", "love", "sex", "heart eyes", "emotion", "beautiful"]
	},
	"1f618": {
		"code_points": {
			"base": "1f618",
			"non_fully_qualified": "1f618",
			"decimal": "&#128536;"
		},
		"name": "face throwing a kiss",
		"shortname": ":kissing_heart:",
		"category": "people",
		"emoji_order": "14",
		"shortname_alternates": [],
		"ascii": [":*", ":-*", "=*", ":^*"],
		"keywords": ["smiley", "love", "sexy"]
	},
	"1f617": {
		"code_points": {
			"base": "1f617",
			"non_fully_qualified": "1f617",
			"decimal": "&#128535;"
		},
		"name": "kissing face",
		"shortname": ":kissing:",
		"category": "people",
		"emoji_order": "15",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "sexy"]
	},
	"1f619": {
		"code_points": {
			"base": "1f619",
			"non_fully_qualified": "1f619",
			"decimal": "&#128537;"
		},
		"name": "kissing face with smiling eyes",
		"shortname": ":kissing_smiling_eyes:",
		"category": "people",
		"emoji_order": "16",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "sexy"]
	},
	"1f61a": {
		"code_points": {
			"base": "1f61a",
			"non_fully_qualified": "1f61a",
			"decimal": "&#128538;"
		},
		"name": "kissing face with closed eyes",
		"shortname": ":kissing_closed_eyes:",
		"category": "people",
		"emoji_order": "17",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "sexy"]
	},
	"263a": {
		"code_points": {
			"base": "263a",
			"non_fully_qualified": "263a",
			"fully_qualified": "263a-fe0f",
			"decimal": "&#9786;"
		},
		"name": "white smiling face",
		"shortname": ":relaxed:",
		"category": "people",
		"emoji_order": "18",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "smiley"]
	},
	"1f642": {
		"code_points": {
			"base": "1f642",
			"non_fully_qualified": "1f642",
			"decimal": "&#128578;"
		},
		"name": "slightly smiling face",
		"shortname": ":slight_smile:",
		"category": "people",
		"emoji_order": "19",
		"shortname_alternates": [":slightly_smiling_face:"],
		"ascii": [":)", ":-)", "=]", "=)", ":]"],
		"keywords": ["happy", "smiley"]
	},
	"1f917": {
		"code_points": {
			"base": "1f917",
			"non_fully_qualified": "1f917",
			"decimal": "&#129303;"
		},
		"name": "hugging face",
		"shortname": ":hugging:",
		"category": "people",
		"emoji_order": "20",
		"shortname_alternates": [":hugging_face:"],
		"ascii": [],
		"keywords": ["smiley", "hug", "thank you"]
	},
	"1f914": {
		"code_points": {
			"base": "1f914",
			"non_fully_qualified": "1f914",
			"decimal": "&#129300;"
		},
		"name": "thinking face",
		"shortname": ":thinking:",
		"category": "people",
		"emoji_order": "21",
		"shortname_alternates": [":thinking_face:"],
		"ascii": [],
		"keywords": ["smiley", "thinking", "boys night"]
	},
	"1f610": {
		"code_points": {
			"base": "1f610",
			"non_fully_qualified": "1f610",
			"decimal": "&#128528;"
		},
		"name": "neutral face",
		"shortname": ":neutral_face:",
		"category": "people",
		"emoji_order": "22",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["mad", "smiley", "shrug", "neutral", "emotion"]
	},
	"1f611": {
		"code_points": {
			"base": "1f611",
			"non_fully_qualified": "1f611",
			"decimal": "&#128529;"
		},
		"name": "expressionless face",
		"shortname": ":expressionless:",
		"category": "people",
		"emoji_order": "23",
		"shortname_alternates": [],
		"ascii": ["-_-", "-__-", "-___-"],
		"keywords": ["mad", "smiley", "neutral", "emotion"]
	},
	"1f636": {
		"code_points": {
			"base": "1f636",
			"non_fully_qualified": "1f636",
			"decimal": "&#128566;"
		},
		"name": "face without mouth",
		"shortname": ":no_mouth:",
		"category": "people",
		"emoji_order": "24",
		"shortname_alternates": [],
		"ascii": [":-X", ":X", ":-#", ":#", "=X", "=x", ":x", ":-x", "=#"],
		"keywords": ["mad", "smiley", "neutral", "emotion"]
	},
	"1f644": {
		"code_points": {
			"base": "1f644",
			"non_fully_qualified": "1f644",
			"decimal": "&#128580;"
		},
		"name": "face with rolling eyes",
		"shortname": ":rolling_eyes:",
		"category": "people",
		"emoji_order": "25",
		"shortname_alternates": [":face_with_rolling_eyes:"],
		"ascii": [],
		"keywords": ["mad", "smiley", "rolling eyes", "emotion", "sarcastic"]
	},
	"1f60f": {
		"code_points": {
			"base": "1f60f",
			"non_fully_qualified": "1f60f",
			"decimal": "&#128527;"
		},
		"name": "smirking face",
		"shortname": ":smirk:",
		"category": "people",
		"emoji_order": "26",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["silly", "smiley", "sexy", "sarcastic"]
	},
	"1f623": {
		"code_points": {
			"base": "1f623",
			"non_fully_qualified": "1f623",
			"decimal": "&#128547;"
		},
		"name": "persevering face",
		"shortname": ":persevere:",
		"category": "people",
		"emoji_order": "27",
		"shortname_alternates": [],
		"ascii": [">.<"],
		"keywords": ["sad", "smiley", "angry", "emotion"]
	},
	"1f625": {
		"code_points": {
			"base": "1f625",
			"non_fully_qualified": "1f625",
			"decimal": "&#128549;"
		},
		"name": "disappointed but relieved face",
		"shortname": ":disappointed_relieved:",
		"category": "people",
		"emoji_order": "28",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "smiley", "stressed", "sweat", "cry", "emotion"]
	},
	"1f62e": {
		"code_points": {
			"base": "1f62e",
			"non_fully_qualified": "1f62e",
			"decimal": "&#128558;"
		},
		"name": "face with open mouth",
		"shortname": ":open_mouth:",
		"category": "people",
		"emoji_order": "29",
		"shortname_alternates": [],
		"ascii": [":-O", ":O", ":-o", ":o", "O_O", ">:O"],
		"keywords": ["smiley", "surprised", "wow", "emotion"]
	},
	"1f910": {
		"code_points": {
			"base": "1f910",
			"non_fully_qualified": "1f910",
			"decimal": "&#129296;"
		},
		"name": "zipper-mouth face",
		"shortname": ":zipper_mouth:",
		"category": "people",
		"emoji_order": "30",
		"shortname_alternates": [":zipper_mouth_face:"],
		"ascii": [],
		"keywords": ["mad", "smiley"]
	},
	"1f62f": {
		"code_points": {
			"base": "1f62f",
			"non_fully_qualified": "1f62f",
			"decimal": "&#128559;"
		},
		"name": "hushed face",
		"shortname": ":hushed:",
		"category": "people",
		"emoji_order": "31",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "surprised", "wow"]
	},
	"1f62a": {
		"code_points": {
			"base": "1f62a",
			"non_fully_qualified": "1f62a",
			"decimal": "&#128554;"
		},
		"name": "sleepy face",
		"shortname": ":sleepy:",
		"category": "people",
		"emoji_order": "32",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "sick", "emotion"]
	},
	"1f62b": {
		"code_points": {
			"base": "1f62b",
			"non_fully_qualified": "1f62b",
			"decimal": "&#128555;"
		},
		"name": "tired face",
		"shortname": ":tired_face:",
		"category": "people",
		"emoji_order": "33",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "smiley", "tired", "emotion"]
	},
	"1f634": {
		"code_points": {
			"base": "1f634",
			"non_fully_qualified": "1f634",
			"decimal": "&#128564;"
		},
		"name": "sleeping face",
		"shortname": ":sleeping:",
		"category": "people",
		"emoji_order": "34",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "tired", "emotion", "goodnight"]
	},
	"1f60c": {
		"code_points": {
			"base": "1f60c",
			"non_fully_qualified": "1f60c",
			"decimal": "&#128524;"
		},
		"name": "relieved face",
		"shortname": ":relieved:",
		"category": "people",
		"emoji_order": "35",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "emotion"]
	},
	"1f913": {
		"code_points": {
			"base": "1f913",
			"non_fully_qualified": "1f913",
			"decimal": "&#129299;"
		},
		"name": "nerd face",
		"shortname": ":nerd:",
		"category": "people",
		"emoji_order": "36",
		"shortname_alternates": [":nerd_face:"],
		"ascii": [],
		"keywords": ["smiley", "glasses"]
	},
	"1f61b": {
		"code_points": {
			"base": "1f61b",
			"non_fully_qualified": "1f61b",
			"decimal": "&#128539;"
		},
		"name": "face with stuck-out tongue",
		"shortname": ":stuck_out_tongue:",
		"category": "people",
		"emoji_order": "37",
		"shortname_alternates": [],
		"ascii": [":P", ":-P", "=P", ":-p", ":p", "=p", ":-\u00de", ":\u00de", ":\u00fe", ":-\u00fe", ":-b", ":b", "d:"],
		"keywords": ["smiley", "sex", "emotion"]
	},
	"1f61c": {
		"code_points": {
			"base": "1f61c",
			"non_fully_qualified": "1f61c",
			"decimal": "&#128540;"
		},
		"name": "face with stuck-out tongue and winking eye",
		"shortname": ":stuck_out_tongue_winking_eye:",
		"category": "people",
		"emoji_order": "38",
		"shortname_alternates": [],
		"ascii": [">:P", "X-P", "x-p"],
		"keywords": ["happy", "smiley", "emotion", "parties"]
	},
	"1f61d": {
		"code_points": {
			"base": "1f61d",
			"non_fully_qualified": "1f61d",
			"decimal": "&#128541;"
		},
		"name": "face with stuck-out tongue and tightly-closed eyes",
		"shortname": ":stuck_out_tongue_closed_eyes:",
		"category": "people",
		"emoji_order": "39",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "smiley", "emotion"]
	},
	"1f924": {
		"code_points": {
			"base": "1f924",
			"non_fully_qualified": "1f924",
			"decimal": "&#129316;"
		},
		"name": "drooling face",
		"shortname": ":drooling_face:",
		"category": "people",
		"emoji_order": "40",
		"shortname_alternates": [":drool:"],
		"ascii": [],
		"keywords": []
	},
	"1f612": {
		"code_points": {
			"base": "1f612",
			"non_fully_qualified": "1f612",
			"decimal": "&#128530;"
		},
		"name": "unamused face",
		"shortname": ":unamused:",
		"category": "people",
		"emoji_order": "41",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "mad", "smiley", "tired", "emotion"]
	},
	"1f613": {
		"code_points": {
			"base": "1f613",
			"non_fully_qualified": "1f613",
			"decimal": "&#128531;"
		},
		"name": "face with cold sweat",
		"shortname": ":sweat:",
		"category": "people",
		"emoji_order": "42",
		"shortname_alternates": [],
		"ascii": ["':(", "':-(", "'=("],
		"keywords": ["sad", "smiley", "stressed", "sweat", "emotion"]
	},
	"1f614": {
		"code_points": {
			"base": "1f614",
			"non_fully_qualified": "1f614",
			"decimal": "&#128532;"
		},
		"name": "pensive face",
		"shortname": ":pensive:",
		"category": "people",
		"emoji_order": "43",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "smiley", "emotion", "rip"]
	},
	"1f615": {
		"code_points": {
			"base": "1f615",
			"non_fully_qualified": "1f615",
			"decimal": "&#128533;"
		},
		"name": "confused face",
		"shortname": ":confused:",
		"category": "people",
		"emoji_order": "44",
		"shortname_alternates": [],
		"ascii": [">:\\", ">:\/", ":-\/", ":-.", ":\/", ":\\", "=\/", "=\\", ":L", "=L"],
		"keywords": ["smiley", "surprised", "emotion"]
	},
	"1f643": {
		"code_points": {
			"base": "1f643",
			"non_fully_qualified": "1f643",
			"decimal": "&#128579;"
		},
		"name": "upside-down face",
		"shortname": ":upside_down:",
		"category": "people",
		"emoji_order": "45",
		"shortname_alternates": [":upside_down_face:"],
		"ascii": [],
		"keywords": ["silly", "smiley", "sarcastic"]
	},
	"1f911": {
		"code_points": {
			"base": "1f911",
			"non_fully_qualified": "1f911",
			"decimal": "&#129297;"
		},
		"name": "money-mouth face",
		"shortname": ":money_mouth:",
		"category": "people",
		"emoji_order": "46",
		"shortname_alternates": [":money_mouth_face:"],
		"ascii": [],
		"keywords": ["smiley", "win", "money", "emotion", "boys night"]
	},
	"1f632": {
		"code_points": {
			"base": "1f632",
			"non_fully_qualified": "1f632",
			"decimal": "&#128562;"
		},
		"name": "astonished face",
		"shortname": ":astonished:",
		"category": "people",
		"emoji_order": "47",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "surprised", "wow", "emotion", "omg"]
	},
	"2639": {
		"code_points": {
			"base": "2639",
			"non_fully_qualified": "2639",
			"fully_qualified": "2639-fe0f",
			"decimal": "&#9785;"
		},
		"name": "white frowning face",
		"shortname": ":frowning2:",
		"category": "people",
		"emoji_order": "48",
		"shortname_alternates": [":white_frowning_face:"],
		"ascii": [],
		"keywords": ["sad", "smiley", "emotion"]
	},
	"1f641": {
		"code_points": {
			"base": "1f641",
			"non_fully_qualified": "1f641",
			"decimal": "&#128577;"
		},
		"name": "slightly frowning face",
		"shortname": ":slight_frown:",
		"category": "people",
		"emoji_order": "49",
		"shortname_alternates": [":slightly_frowning_face:"],
		"ascii": [],
		"keywords": ["sad", "smiley", "emotion"]
	},
	"1f616": {
		"code_points": {
			"base": "1f616",
			"non_fully_qualified": "1f616",
			"decimal": "&#128534;"
		},
		"name": "confounded face",
		"shortname": ":confounded:",
		"category": "people",
		"emoji_order": "50",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "smiley", "angry", "emotion"]
	},
	"1f61e": {
		"code_points": {
			"base": "1f61e",
			"non_fully_qualified": "1f61e",
			"decimal": "&#128542;"
		},
		"name": "disappointed face",
		"shortname": ":disappointed:",
		"category": "people",
		"emoji_order": "51",
		"shortname_alternates": [],
		"ascii": [">:[", ":-(", ":(", ":-[", ":[", "=("],
		"keywords": ["sad", "smiley", "tired", "emotion"]
	},
	"1f61f": {
		"code_points": {
			"base": "1f61f",
			"non_fully_qualified": "1f61f",
			"decimal": "&#128543;"
		},
		"name": "worried face",
		"shortname": ":worried:",
		"category": "people",
		"emoji_order": "52",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "smiley", "emotion"]
	},
	"1f624": {
		"code_points": {
			"base": "1f624",
			"non_fully_qualified": "1f624",
			"decimal": "&#128548;"
		},
		"name": "face with look of triumph",
		"shortname": ":triumph:",
		"category": "people",
		"emoji_order": "53",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["mad", "smiley", "angry", "emotion", "steam"]
	},
	"1f622": {
		"code_points": {
			"base": "1f622",
			"non_fully_qualified": "1f622",
			"decimal": "&#128546;"
		},
		"name": "crying face",
		"shortname": ":cry:",
		"category": "people",
		"emoji_order": "54",
		"shortname_alternates": [],
		"ascii": [":'(", ":'-(", ";(", ";-("],
		"keywords": ["sad", "smiley", "cry", "emotion", "rip", "heartbreak"]
	},
	"1f62d": {
		"code_points": {
			"base": "1f62d",
			"non_fully_qualified": "1f62d",
			"decimal": "&#128557;"
		},
		"name": "loudly crying face",
		"shortname": ":sob:",
		"category": "people",
		"emoji_order": "55",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "smiley", "cry", "emotion", "heartbreak"]
	},
	"1f626": {
		"code_points": {
			"base": "1f626",
			"non_fully_qualified": "1f626",
			"decimal": "&#128550;"
		},
		"name": "frowning face with open mouth",
		"shortname": ":frowning:",
		"category": "people",
		"emoji_order": "56",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "smiley", "surprised", "emotion"]
	},
	"1f627": {
		"code_points": {
			"base": "1f627",
			"non_fully_qualified": "1f627",
			"decimal": "&#128551;"
		},
		"name": "anguished face",
		"shortname": ":anguished:",
		"category": "people",
		"emoji_order": "57",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "smiley", "surprised", "emotion"]
	},
	"1f628": {
		"code_points": {
			"base": "1f628",
			"non_fully_qualified": "1f628",
			"decimal": "&#128552;"
		},
		"name": "fearful face",
		"shortname": ":fearful:",
		"category": "people",
		"emoji_order": "58",
		"shortname_alternates": [],
		"ascii": ["D:"],
		"keywords": ["smiley", "surprised", "emotion"]
	},
	"1f629": {
		"code_points": {
			"base": "1f629",
			"non_fully_qualified": "1f629",
			"decimal": "&#128553;"
		},
		"name": "weary face",
		"shortname": ":weary:",
		"category": "people",
		"emoji_order": "59",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sad", "smiley", "tired", "stressed", "emotion"]
	},
	"1f62c": {
		"code_points": {
			"base": "1f62c",
			"non_fully_qualified": "1f62c",
			"decimal": "&#128556;"
		},
		"name": "grimacing face",
		"shortname": ":grimacing:",
		"category": "people",
		"emoji_order": "60",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["silly", "smiley", "emotion", "selfie"]
	},
	"1f630": {
		"code_points": {
			"base": "1f630",
			"non_fully_qualified": "1f630",
			"decimal": "&#128560;"
		},
		"name": "face with open mouth and cold sweat",
		"shortname": ":cold_sweat:",
		"category": "people",
		"emoji_order": "61",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "sweat", "emotion"]
	},
	"1f631": {
		"code_points": {
			"base": "1f631",
			"non_fully_qualified": "1f631",
			"decimal": "&#128561;"
		},
		"name": "face screaming in fear",
		"shortname": ":scream:",
		"category": "people",
		"emoji_order": "62",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "surprised", "wow", "emotion", "omg"]
	},
	"1f633": {
		"code_points": {
			"base": "1f633",
			"non_fully_qualified": "1f633",
			"decimal": "&#128563;"
		},
		"name": "flushed face",
		"shortname": ":flushed:",
		"category": "people",
		"emoji_order": "63",
		"shortname_alternates": [],
		"ascii": [":$", "=$"],
		"keywords": ["smiley", "emotion", "omg"]
	},
	"1f635": {
		"code_points": {
			"base": "1f635",
			"non_fully_qualified": "1f635",
			"decimal": "&#128565;"
		},
		"name": "dizzy face",
		"shortname": ":dizzy_face:",
		"category": "people",
		"emoji_order": "64",
		"shortname_alternates": [],
		"ascii": ["#-)", "#)", "%-)", "%)", "X)", "X-)"],
		"keywords": ["smiley", "surprised", "dead", "wow", "emotion", "omg"]
	},
	"1f621": {
		"code_points": {
			"base": "1f621",
			"non_fully_qualified": "1f621",
			"decimal": "&#128545;"
		},
		"name": "pouting face",
		"shortname": ":rage:",
		"category": "people",
		"emoji_order": "65",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["mad", "smiley", "angry", "emotion"]
	},
	"1f620": {
		"code_points": {
			"base": "1f620",
			"non_fully_qualified": "1f620",
			"decimal": "&#128544;"
		},
		"name": "angry face",
		"shortname": ":angry:",
		"category": "people",
		"emoji_order": "66",
		"shortname_alternates": [],
		"ascii": [">:(", ">:-(", ":@"],
		"keywords": ["mad", "smiley", "emotion"]
	},
	"1f607": {
		"code_points": {
			"base": "1f607",
			"non_fully_qualified": "1f607",
			"decimal": "&#128519;"
		},
		"name": "smiling face with halo",
		"shortname": ":innocent:",
		"category": "people",
		"emoji_order": "67",
		"shortname_alternates": [],
		"ascii": ["O:-)", "0:-3", "0:3", "0:-)", "0:)", "0;^)", "O:)", "O;-)", "O=)", "0;-)", "O:-3", "O:3"],
		"keywords": ["smiley", "emotion"]
	},
	"1f920": {
		"code_points": {
			"base": "1f920",
			"non_fully_qualified": "1f920",
			"decimal": "&#129312;"
		},
		"name": "face with cowboy hat",
		"shortname": ":cowboy:",
		"category": "people",
		"emoji_order": "68",
		"shortname_alternates": [":face_with_cowboy_hat:"],
		"ascii": [],
		"keywords": []
	},
	"1f921": {
		"code_points": {
			"base": "1f921",
			"non_fully_qualified": "1f921",
			"decimal": "&#129313;"
		},
		"name": "clown face",
		"shortname": ":clown:",
		"category": "people",
		"emoji_order": "69",
		"shortname_alternates": [":clown_face:"],
		"ascii": [],
		"keywords": []
	},
	"1f925": {
		"code_points": {
			"base": "1f925",
			"non_fully_qualified": "1f925",
			"decimal": "&#129317;"
		},
		"name": "lying face",
		"shortname": ":lying_face:",
		"category": "people",
		"emoji_order": "70",
		"shortname_alternates": [":liar:"],
		"ascii": [],
		"keywords": []
	},
	"1f637": {
		"code_points": {
			"base": "1f637",
			"non_fully_qualified": "1f637",
			"decimal": "&#128567;"
		},
		"name": "face with medical mask",
		"shortname": ":mask:",
		"category": "people",
		"emoji_order": "71",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "dead", "health", "sick"]
	},
	"1f912": {
		"code_points": {
			"base": "1f912",
			"non_fully_qualified": "1f912",
			"decimal": "&#129298;"
		},
		"name": "face with thermometer",
		"shortname": ":thermometer_face:",
		"category": "people",
		"emoji_order": "72",
		"shortname_alternates": [":face_with_thermometer:"],
		"ascii": [],
		"keywords": ["smiley", "health", "sick", "emotion"]
	},
	"1f915": {
		"code_points": {
			"base": "1f915",
			"non_fully_qualified": "1f915",
			"decimal": "&#129301;"
		},
		"name": "face with head-bandage",
		"shortname": ":head_bandage:",
		"category": "people",
		"emoji_order": "73",
		"shortname_alternates": [":face_with_head_bandage:"],
		"ascii": [],
		"keywords": ["smiley", "health", "sick", "emotion"]
	},
	"1f922": {
		"code_points": {
			"base": "1f922",
			"non_fully_qualified": "1f922",
			"decimal": "&#129314;"
		},
		"name": "nauseated face",
		"shortname": ":nauseated_face:",
		"category": "people",
		"emoji_order": "74",
		"shortname_alternates": [":sick:"],
		"ascii": [],
		"keywords": []
	},
	"1f927": {
		"code_points": {
			"base": "1f927",
			"non_fully_qualified": "1f927",
			"decimal": "&#129319;"
		},
		"name": "sneezing face",
		"shortname": ":sneezing_face:",
		"category": "people",
		"emoji_order": "75",
		"shortname_alternates": [":sneeze:"],
		"ascii": [],
		"keywords": []
	},
	"1f608": {
		"code_points": {
			"base": "1f608",
			"non_fully_qualified": "1f608",
			"decimal": "&#128520;"
		},
		"name": "smiling face with horns",
		"shortname": ":smiling_imp:",
		"category": "people",
		"emoji_order": "76",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["silly", "smiley", "angry", "monster", "devil", "boys night"]
	},
	"1f47f": {
		"code_points": {
			"base": "1f47f",
			"non_fully_qualified": "1f47f",
			"decimal": "&#128127;"
		},
		"name": "imp",
		"shortname": ":imp:",
		"category": "people",
		"emoji_order": "77",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["smiley", "monster", "devil", "wth"]
	},
	"1f479": {
		"code_points": {
			"base": "1f479",
			"non_fully_qualified": "1f479",
			"decimal": "&#128121;"
		},
		"name": "japanese ogre",
		"shortname": ":japanese_ogre:",
		"category": "people",
		"emoji_order": "78",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["monster"]
	},
	"1f47a": {
		"code_points": {
			"base": "1f47a",
			"non_fully_qualified": "1f47a",
			"decimal": "&#128122;"
		},
		"name": "japanese goblin",
		"shortname": ":japanese_goblin:",
		"category": "people",
		"emoji_order": "79",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["angry", "monster"]
	},
	"1f480": {
		"code_points": {
			"base": "1f480",
			"non_fully_qualified": "1f480",
			"decimal": "&#128128;"
		},
		"name": "skull",
		"shortname": ":skull:",
		"category": "people",
		"emoji_order": "80",
		"shortname_alternates": [":skeleton:"],
		"ascii": [],
		"keywords": ["dead", "halloween", "skull"]
	},
	"2620": {
		"code_points": {
			"base": "2620",
			"non_fully_qualified": "2620",
			"fully_qualified": "2620-fe0f",
			"decimal": "&#9760;"
		},
		"name": "skull and crossbones",
		"shortname": ":skull_crossbones:",
		"category": "objects",
		"emoji_order": "81",
		"shortname_alternates": [":skull_and_crossbones:"],
		"ascii": [],
		"keywords": ["symbol", "dead", "skull"]
	},
	"1f47b": {
		"code_points": {
			"base": "1f47b",
			"non_fully_qualified": "1f47b",
			"decimal": "&#128123;"
		},
		"name": "ghost",
		"shortname": ":ghost:",
		"category": "people",
		"emoji_order": "82",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["holidays", "halloween", "monster"]
	},
	"1f47d": {
		"code_points": {
			"base": "1f47d",
			"non_fully_qualified": "1f47d",
			"decimal": "&#128125;"
		},
		"name": "extraterrestrial alien",
		"shortname": ":alien:",
		"category": "people",
		"emoji_order": "83",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "monster", "alien", "scientology"]
	},
	"1f47e": {
		"code_points": {
			"base": "1f47e",
			"non_fully_qualified": "1f47e",
			"decimal": "&#128126;"
		},
		"name": "alien monster",
		"shortname": ":space_invader:",
		"category": "activity",
		"emoji_order": "84",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["monster", "alien"]
	},
	"1f916": {
		"code_points": {
			"base": "1f916",
			"non_fully_qualified": "1f916",
			"decimal": "&#129302;"
		},
		"name": "robot face",
		"shortname": ":robot:",
		"category": "people",
		"emoji_order": "85",
		"shortname_alternates": [":robot_face:"],
		"ascii": [],
		"keywords": ["monster", "robot"]
	},
	"1f4a9": {
		"code_points": {
			"base": "1f4a9",
			"non_fully_qualified": "1f4a9",
			"decimal": "&#128169;"
		},
		"name": "pile of poo",
		"shortname": ":poop:",
		"category": "people",
		"emoji_order": "86",
		"shortname_alternates": [":shit:", ":hankey:", ":poo:"],
		"ascii": [],
		"keywords": ["bathroom", "shit", "sol", "diarrhea"]
	},
	"1f63a": {
		"code_points": {
			"base": "1f63a",
			"non_fully_qualified": "1f63a",
			"decimal": "&#128570;"
		},
		"name": "smiling cat face with open mouth",
		"shortname": ":smiley_cat:",
		"category": "people",
		"emoji_order": "87",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "cat", "animal"]
	},
	"1f638": {
		"code_points": {
			"base": "1f638",
			"non_fully_qualified": "1f638",
			"decimal": "&#128568;"
		},
		"name": "grinning cat face with smiling eyes",
		"shortname": ":smile_cat:",
		"category": "people",
		"emoji_order": "88",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "cat", "animal"]
	},
	"1f639": {
		"code_points": {
			"base": "1f639",
			"non_fully_qualified": "1f639",
			"decimal": "&#128569;"
		},
		"name": "cat face with tears of joy",
		"shortname": ":joy_cat:",
		"category": "people",
		"emoji_order": "89",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["happy", "silly", "cry", "laugh", "cat", "animal", "sarcastic"]
	},
	"1f63b": {
		"code_points": {
			"base": "1f63b",
			"non_fully_qualified": "1f63b",
			"decimal": "&#128571;"
		},
		"name": "smiling cat face with heart-shaped eyes",
		"shortname": ":heart_eyes_cat:",
		"category": "people",
		"emoji_order": "90",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["heart eyes", "cat", "animal", "beautiful"]
	},
	"1f63c": {
		"code_points": {
			"base": "1f63c",
			"non_fully_qualified": "1f63c",
			"decimal": "&#128572;"
		},
		"name": "cat face with wry smile",
		"shortname": ":smirk_cat:",
		"category": "people",
		"emoji_order": "91",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["cat", "animal"]
	},
	"1f63d": {
		"code_points": {
			"base": "1f63d",
			"non_fully_qualified": "1f63d",
			"decimal": "&#128573;"
		},
		"name": "kissing cat face with closed eyes",
		"shortname": ":kissing_cat:",
		"category": "people",
		"emoji_order": "92",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["cat", "animal"]
	},
	"1f640": {
		"code_points": {
			"base": "1f640",
			"non_fully_qualified": "1f640",
			"decimal": "&#128576;"
		},
		"name": "weary cat face",
		"shortname": ":scream_cat:",
		"category": "people",
		"emoji_order": "93",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["cat", "animal"]
	},
	"1f63f": {
		"code_points": {
			"base": "1f63f",
			"non_fully_qualified": "1f63f",
			"decimal": "&#128575;"
		},
		"name": "crying cat face",
		"shortname": ":crying_cat_face:",
		"category": "people",
		"emoji_order": "94",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["cry", "cat", "animal"]
	},
	"1f63e": {
		"code_points": {
			"base": "1f63e",
			"non_fully_qualified": "1f63e",
			"decimal": "&#128574;"
		},
		"name": "pouting cat face",
		"shortname": ":pouting_cat:",
		"category": "people",
		"emoji_order": "95",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["cat", "animal"]
	},
	"1f648": {
		"code_points": {
			"base": "1f648",
			"non_fully_qualified": "1f648",
			"decimal": "&#128584;"
		},
		"name": "see-no-evil monkey",
		"shortname": ":see_no_evil:",
		"category": "nature",
		"emoji_order": "96",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f649": {
		"code_points": {
			"base": "1f649",
			"non_fully_qualified": "1f649",
			"decimal": "&#128585;"
		},
		"name": "hear-no-evil monkey",
		"shortname": ":hear_no_evil:",
		"category": "nature",
		"emoji_order": "97",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f64a": {
		"code_points": {
			"base": "1f64a",
			"non_fully_qualified": "1f64a",
			"decimal": "&#128586;"
		},
		"name": "speak-no-evil monkey",
		"shortname": ":speak_no_evil:",
		"category": "nature",
		"emoji_order": "98",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f466": {
		"code_points": {
			"base": "1f466",
			"non_fully_qualified": "1f466",
			"decimal": "&#128102;"
		},
		"name": "boy",
		"shortname": ":boy:",
		"category": "people",
		"emoji_order": "99",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "baby", "diversity"]
	},
	"1f466-1f3fb": {
		"code_points": {
			"base": "1f466-1f3fb",
			"non_fully_qualified": "1f466-1f3fb",
			"decimal": "&#128102;&#127995;"
		},
		"name": "boy tone 1",
		"shortname": ":boy_tone1:",
		"category": "people",
		"emoji_order": "100",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f466-1f3fc": {
		"code_points": {
			"base": "1f466-1f3fc",
			"non_fully_qualified": "1f466-1f3fc",
			"decimal": "&#128102;&#127996;"
		},
		"name": "boy tone 2",
		"shortname": ":boy_tone2:",
		"category": "people",
		"emoji_order": "101",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f466-1f3fd": {
		"code_points": {
			"base": "1f466-1f3fd",
			"non_fully_qualified": "1f466-1f3fd",
			"decimal": "&#128102;&#127997;"
		},
		"name": "boy tone 3",
		"shortname": ":boy_tone3:",
		"category": "people",
		"emoji_order": "102",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f466-1f3fe": {
		"code_points": {
			"base": "1f466-1f3fe",
			"non_fully_qualified": "1f466-1f3fe",
			"decimal": "&#128102;&#127998;"
		},
		"name": "boy tone 4",
		"shortname": ":boy_tone4:",
		"category": "people",
		"emoji_order": "103",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f466-1f3ff": {
		"code_points": {
			"base": "1f466-1f3ff",
			"non_fully_qualified": "1f466-1f3ff",
			"decimal": "&#128102;&#127999;"
		},
		"name": "boy tone 5",
		"shortname": ":boy_tone5:",
		"category": "people",
		"emoji_order": "104",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f467": {
		"code_points": {
			"base": "1f467",
			"non_fully_qualified": "1f467",
			"decimal": "&#128103;"
		},
		"name": "girl",
		"shortname": ":girl:",
		"category": "people",
		"emoji_order": "105",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "baby", "diversity"]
	},
	"1f467-1f3fb": {
		"code_points": {
			"base": "1f467-1f3fb",
			"non_fully_qualified": "1f467-1f3fb",
			"decimal": "&#128103;&#127995;"
		},
		"name": "girl tone 1",
		"shortname": ":girl_tone1:",
		"category": "people",
		"emoji_order": "106",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f467-1f3fc": {
		"code_points": {
			"base": "1f467-1f3fc",
			"non_fully_qualified": "1f467-1f3fc",
			"decimal": "&#128103;&#127996;"
		},
		"name": "girl tone 2",
		"shortname": ":girl_tone2:",
		"category": "people",
		"emoji_order": "107",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f467-1f3fd": {
		"code_points": {
			"base": "1f467-1f3fd",
			"non_fully_qualified": "1f467-1f3fd",
			"decimal": "&#128103;&#127997;"
		},
		"name": "girl tone 3",
		"shortname": ":girl_tone3:",
		"category": "people",
		"emoji_order": "108",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f467-1f3fe": {
		"code_points": {
			"base": "1f467-1f3fe",
			"non_fully_qualified": "1f467-1f3fe",
			"decimal": "&#128103;&#127998;"
		},
		"name": "girl tone 4",
		"shortname": ":girl_tone4:",
		"category": "people",
		"emoji_order": "109",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f467-1f3ff": {
		"code_points": {
			"base": "1f467-1f3ff",
			"non_fully_qualified": "1f467-1f3ff",
			"decimal": "&#128103;&#127999;"
		},
		"name": "girl tone 5",
		"shortname": ":girl_tone5:",
		"category": "people",
		"emoji_order": "110",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f468": {
		"code_points": {
			"base": "1f468",
			"non_fully_qualified": "1f468",
			"decimal": "&#128104;"
		},
		"name": "man",
		"shortname": ":man:",
		"category": "people",
		"emoji_order": "111",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "men", "sex", "diversity", "selfie", "boys night"]
	},
	"1f468-1f3fb": {
		"code_points": {
			"base": "1f468-1f3fb",
			"non_fully_qualified": "1f468-1f3fb",
			"decimal": "&#128104;&#127995;"
		},
		"name": "man tone 1",
		"shortname": ":man_tone1:",
		"category": "people",
		"emoji_order": "112",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f468-1f3fc": {
		"code_points": {
			"base": "1f468-1f3fc",
			"non_fully_qualified": "1f468-1f3fc",
			"decimal": "&#128104;&#127996;"
		},
		"name": "man tone 2",
		"shortname": ":man_tone2:",
		"category": "people",
		"emoji_order": "113",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f468-1f3fd": {
		"code_points": {
			"base": "1f468-1f3fd",
			"non_fully_qualified": "1f468-1f3fd",
			"decimal": "&#128104;&#127997;"
		},
		"name": "man tone 3",
		"shortname": ":man_tone3:",
		"category": "people",
		"emoji_order": "114",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f468-1f3fe": {
		"code_points": {
			"base": "1f468-1f3fe",
			"non_fully_qualified": "1f468-1f3fe",
			"decimal": "&#128104;&#127998;"
		},
		"name": "man tone 4",
		"shortname": ":man_tone4:",
		"category": "people",
		"emoji_order": "115",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f468-1f3ff": {
		"code_points": {
			"base": "1f468-1f3ff",
			"non_fully_qualified": "1f468-1f3ff",
			"decimal": "&#128104;&#127999;"
		},
		"name": "man tone 5",
		"shortname": ":man_tone5:",
		"category": "people",
		"emoji_order": "116",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f469": {
		"code_points": {
			"base": "1f469",
			"non_fully_qualified": "1f469",
			"decimal": "&#128105;"
		},
		"name": "woman",
		"shortname": ":woman:",
		"category": "people",
		"emoji_order": "117",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "sex", "diversity", "feminist", "selfie", "girls night"]
	},
	"1f469-1f3fb": {
		"code_points": {
			"base": "1f469-1f3fb",
			"non_fully_qualified": "1f469-1f3fb",
			"decimal": "&#128105;&#127995;"
		},
		"name": "woman tone 1",
		"shortname": ":woman_tone1:",
		"category": "people",
		"emoji_order": "118",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f469-1f3fc": {
		"code_points": {
			"base": "1f469-1f3fc",
			"non_fully_qualified": "1f469-1f3fc",
			"decimal": "&#128105;&#127996;"
		},
		"name": "woman tone 2",
		"shortname": ":woman_tone2:",
		"category": "people",
		"emoji_order": "119",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f469-1f3fd": {
		"code_points": {
			"base": "1f469-1f3fd",
			"non_fully_qualified": "1f469-1f3fd",
			"decimal": "&#128105;&#127997;"
		},
		"name": "woman tone 3",
		"shortname": ":woman_tone3:",
		"category": "people",
		"emoji_order": "120",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f469-1f3fe": {
		"code_points": {
			"base": "1f469-1f3fe",
			"non_fully_qualified": "1f469-1f3fe",
			"decimal": "&#128105;&#127998;"
		},
		"name": "woman tone 4",
		"shortname": ":woman_tone4:",
		"category": "people",
		"emoji_order": "121",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f469-1f3ff": {
		"code_points": {
			"base": "1f469-1f3ff",
			"non_fully_qualified": "1f469-1f3ff",
			"decimal": "&#128105;&#127999;"
		},
		"name": "woman tone 5",
		"shortname": ":woman_tone5:",
		"category": "people",
		"emoji_order": "122",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f474": {
		"code_points": {
			"base": "1f474",
			"non_fully_qualified": "1f474",
			"decimal": "&#128116;"
		},
		"name": "older man",
		"shortname": ":older_man:",
		"category": "people",
		"emoji_order": "123",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "men", "old people", "diversity"]
	},
	"1f474-1f3fb": {
		"code_points": {
			"base": "1f474-1f3fb",
			"non_fully_qualified": "1f474-1f3fb",
			"decimal": "&#128116;&#127995;"
		},
		"name": "older man tone 1",
		"shortname": ":older_man_tone1:",
		"category": "people",
		"emoji_order": "124",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f474-1f3fc": {
		"code_points": {
			"base": "1f474-1f3fc",
			"non_fully_qualified": "1f474-1f3fc",
			"decimal": "&#128116;&#127996;"
		},
		"name": "older man tone 2",
		"shortname": ":older_man_tone2:",
		"category": "people",
		"emoji_order": "125",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f474-1f3fd": {
		"code_points": {
			"base": "1f474-1f3fd",
			"non_fully_qualified": "1f474-1f3fd",
			"decimal": "&#128116;&#127997;"
		},
		"name": "older man tone 3",
		"shortname": ":older_man_tone3:",
		"category": "people",
		"emoji_order": "126",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f474-1f3fe": {
		"code_points": {
			"base": "1f474-1f3fe",
			"non_fully_qualified": "1f474-1f3fe",
			"decimal": "&#128116;&#127998;"
		},
		"name": "older man tone 4",
		"shortname": ":older_man_tone4:",
		"category": "people",
		"emoji_order": "127",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f474-1f3ff": {
		"code_points": {
			"base": "1f474-1f3ff",
			"non_fully_qualified": "1f474-1f3ff",
			"decimal": "&#128116;&#127999;"
		},
		"name": "older man tone 5",
		"shortname": ":older_man_tone5:",
		"category": "people",
		"emoji_order": "128",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f475": {
		"code_points": {
			"base": "1f475",
			"non_fully_qualified": "1f475",
			"decimal": "&#128117;"
		},
		"name": "older woman",
		"shortname": ":older_woman:",
		"category": "people",
		"emoji_order": "129",
		"shortname_alternates": [":grandma:"],
		"ascii": [],
		"keywords": ["people", "old people", "diversity"]
	},
	"1f475-1f3fb": {
		"code_points": {
			"base": "1f475-1f3fb",
			"non_fully_qualified": "1f475-1f3fb",
			"decimal": "&#128117;&#127995;"
		},
		"name": "older woman tone 1",
		"shortname": ":older_woman_tone1:",
		"category": "people",
		"emoji_order": "130",
		"shortname_alternates": [":grandma_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f475-1f3fc": {
		"code_points": {
			"base": "1f475-1f3fc",
			"non_fully_qualified": "1f475-1f3fc",
			"decimal": "&#128117;&#127996;"
		},
		"name": "older woman tone 2",
		"shortname": ":older_woman_tone2:",
		"category": "people",
		"emoji_order": "131",
		"shortname_alternates": [":grandma_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f475-1f3fd": {
		"code_points": {
			"base": "1f475-1f3fd",
			"non_fully_qualified": "1f475-1f3fd",
			"decimal": "&#128117;&#127997;"
		},
		"name": "older woman tone 3",
		"shortname": ":older_woman_tone3:",
		"category": "people",
		"emoji_order": "132",
		"shortname_alternates": [":grandma_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f475-1f3fe": {
		"code_points": {
			"base": "1f475-1f3fe",
			"non_fully_qualified": "1f475-1f3fe",
			"decimal": "&#128117;&#127998;"
		},
		"name": "older woman tone 4",
		"shortname": ":older_woman_tone4:",
		"category": "people",
		"emoji_order": "133",
		"shortname_alternates": [":grandma_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f475-1f3ff": {
		"code_points": {
			"base": "1f475-1f3ff",
			"non_fully_qualified": "1f475-1f3ff",
			"decimal": "&#128117;&#127999;"
		},
		"name": "older woman tone 5",
		"shortname": ":older_woman_tone5:",
		"category": "people",
		"emoji_order": "134",
		"shortname_alternates": [":grandma_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f476": {
		"code_points": {
			"base": "1f476",
			"non_fully_qualified": "1f476",
			"decimal": "&#128118;"
		},
		"name": "baby",
		"shortname": ":baby:",
		"category": "people",
		"emoji_order": "135",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "baby", "diversity"]
	},
	"1f476-1f3fb": {
		"code_points": {
			"base": "1f476-1f3fb",
			"non_fully_qualified": "1f476-1f3fb",
			"decimal": "&#128118;&#127995;"
		},
		"name": "baby tone 1",
		"shortname": ":baby_tone1:",
		"category": "people",
		"emoji_order": "136",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f476-1f3fc": {
		"code_points": {
			"base": "1f476-1f3fc",
			"non_fully_qualified": "1f476-1f3fc",
			"decimal": "&#128118;&#127996;"
		},
		"name": "baby tone 2",
		"shortname": ":baby_tone2:",
		"category": "people",
		"emoji_order": "137",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f476-1f3fd": {
		"code_points": {
			"base": "1f476-1f3fd",
			"non_fully_qualified": "1f476-1f3fd",
			"decimal": "&#128118;&#127997;"
		},
		"name": "baby tone 3",
		"shortname": ":baby_tone3:",
		"category": "people",
		"emoji_order": "138",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f476-1f3fe": {
		"code_points": {
			"base": "1f476-1f3fe",
			"non_fully_qualified": "1f476-1f3fe",
			"decimal": "&#128118;&#127998;"
		},
		"name": "baby tone 4",
		"shortname": ":baby_tone4:",
		"category": "people",
		"emoji_order": "139",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f476-1f3ff": {
		"code_points": {
			"base": "1f476-1f3ff",
			"non_fully_qualified": "1f476-1f3ff",
			"decimal": "&#128118;&#127999;"
		},
		"name": "baby tone 5",
		"shortname": ":baby_tone5:",
		"category": "people",
		"emoji_order": "140",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f47c": {
		"code_points": {
			"base": "1f47c",
			"non_fully_qualified": "1f47c",
			"decimal": "&#128124;"
		},
		"name": "baby angel",
		"shortname": ":angel:",
		"category": "people",
		"emoji_order": "141",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "diversity", "omg"]
	},
	"1f47c-1f3fb": {
		"code_points": {
			"base": "1f47c-1f3fb",
			"non_fully_qualified": "1f47c-1f3fb",
			"decimal": "&#128124;&#127995;"
		},
		"name": "baby angel tone 1",
		"shortname": ":angel_tone1:",
		"category": "people",
		"emoji_order": "142",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f47c-1f3fc": {
		"code_points": {
			"base": "1f47c-1f3fc",
			"non_fully_qualified": "1f47c-1f3fc",
			"decimal": "&#128124;&#127996;"
		},
		"name": "baby angel tone 2",
		"shortname": ":angel_tone2:",
		"category": "people",
		"emoji_order": "143",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f47c-1f3fd": {
		"code_points": {
			"base": "1f47c-1f3fd",
			"non_fully_qualified": "1f47c-1f3fd",
			"decimal": "&#128124;&#127997;"
		},
		"name": "baby angel tone 3",
		"shortname": ":angel_tone3:",
		"category": "people",
		"emoji_order": "144",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f47c-1f3fe": {
		"code_points": {
			"base": "1f47c-1f3fe",
			"non_fully_qualified": "1f47c-1f3fe",
			"decimal": "&#128124;&#127998;"
		},
		"name": "baby angel tone 4",
		"shortname": ":angel_tone4:",
		"category": "people",
		"emoji_order": "145",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f47c-1f3ff": {
		"code_points": {
			"base": "1f47c-1f3ff",
			"non_fully_qualified": "1f47c-1f3ff",
			"decimal": "&#128124;&#127999;"
		},
		"name": "baby angel tone 5",
		"shortname": ":angel_tone5:",
		"category": "people",
		"emoji_order": "146",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f46e": {
		"code_points": {
			"base": "1f46e",
			"non_fully_qualified": "1f46e",
			"decimal": "&#128110;"
		},
		"name": "police officer",
		"shortname": ":cop:",
		"category": "people",
		"emoji_order": "339",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "hat", "men", "diversity", "job", "police", "911"]
	},
	"1f46e-1f3fb": {
		"code_points": {
			"base": "1f46e-1f3fb",
			"non_fully_qualified": "1f46e-1f3fb",
			"decimal": "&#128110;&#127995;"
		},
		"name": "police officer tone 1",
		"shortname": ":cop_tone1:",
		"category": "people",
		"emoji_order": "340",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f46e-1f3fc": {
		"code_points": {
			"base": "1f46e-1f3fc",
			"non_fully_qualified": "1f46e-1f3fc",
			"decimal": "&#128110;&#127996;"
		},
		"name": "police officer tone 2",
		"shortname": ":cop_tone2:",
		"category": "people",
		"emoji_order": "341",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f46e-1f3fd": {
		"code_points": {
			"base": "1f46e-1f3fd",
			"non_fully_qualified": "1f46e-1f3fd",
			"decimal": "&#128110;&#127997;"
		},
		"name": "police officer tone 3",
		"shortname": ":cop_tone3:",
		"category": "people",
		"emoji_order": "342",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f46e-1f3fe": {
		"code_points": {
			"base": "1f46e-1f3fe",
			"non_fully_qualified": "1f46e-1f3fe",
			"decimal": "&#128110;&#127998;"
		},
		"name": "police officer tone 4",
		"shortname": ":cop_tone4:",
		"category": "people",
		"emoji_order": "343",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f46e-1f3ff": {
		"code_points": {
			"base": "1f46e-1f3ff",
			"non_fully_qualified": "1f46e-1f3ff",
			"decimal": "&#128110;&#127999;"
		},
		"name": "police officer tone 5",
		"shortname": ":cop_tone5:",
		"category": "people",
		"emoji_order": "344",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f575": {
		"code_points": {
			"base": "1f575",
			"non_fully_qualified": "1f575",
			"fully_qualified": "1f575-fe0f",
			"decimal": "&#128373;"
		},
		"name": "sleuth or spy",
		"shortname": ":spy:",
		"category": "people",
		"emoji_order": "357",
		"shortname_alternates": [":sleuth_or_spy:"],
		"ascii": [],
		"keywords": ["people", "hat", "men", "glasses", "diversity", "job"]
	},
	"1f575-1f3fb": {
		"code_points": {
			"base": "1f575-1f3fb",
			"non_fully_qualified": "1f575-1f3fb",
			"decimal": "&#128373;&#127995;"
		},
		"name": "sleuth or spy tone 1",
		"shortname": ":spy_tone1:",
		"category": "people",
		"emoji_order": "358",
		"shortname_alternates": [":sleuth_or_spy_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f575-1f3fc": {
		"code_points": {
			"base": "1f575-1f3fc",
			"non_fully_qualified": "1f575-1f3fc",
			"decimal": "&#128373;&#127996;"
		},
		"name": "sleuth or spy tone 2",
		"shortname": ":spy_tone2:",
		"category": "people",
		"emoji_order": "359",
		"shortname_alternates": [":sleuth_or_spy_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f575-1f3fd": {
		"code_points": {
			"base": "1f575-1f3fd",
			"non_fully_qualified": "1f575-1f3fd",
			"decimal": "&#128373;&#127997;"
		},
		"name": "sleuth or spy tone 3",
		"shortname": ":spy_tone3:",
		"category": "people",
		"emoji_order": "360",
		"shortname_alternates": [":sleuth_or_spy_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f575-1f3fe": {
		"code_points": {
			"base": "1f575-1f3fe",
			"non_fully_qualified": "1f575-1f3fe",
			"decimal": "&#128373;&#127998;"
		},
		"name": "sleuth or spy tone 4",
		"shortname": ":spy_tone4:",
		"category": "people",
		"emoji_order": "361",
		"shortname_alternates": [":sleuth_or_spy_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f575-1f3ff": {
		"code_points": {
			"base": "1f575-1f3ff",
			"non_fully_qualified": "1f575-1f3ff",
			"decimal": "&#128373;&#127999;"
		},
		"name": "sleuth or spy tone 5",
		"shortname": ":spy_tone5:",
		"category": "people",
		"emoji_order": "362",
		"shortname_alternates": [":sleuth_or_spy_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f482": {
		"code_points": {
			"base": "1f482",
			"non_fully_qualified": "1f482",
			"decimal": "&#128130;"
		},
		"name": "guardsman",
		"shortname": ":guardsman:",
		"category": "people",
		"emoji_order": "375",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "hat", "men", "diversity", "job"]
	},
	"1f482-1f3fb": {
		"code_points": {
			"base": "1f482-1f3fb",
			"non_fully_qualified": "1f482-1f3fb",
			"decimal": "&#128130;&#127995;"
		},
		"name": "guardsman tone 1",
		"shortname": ":guardsman_tone1:",
		"category": "people",
		"emoji_order": "376",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f482-1f3fc": {
		"code_points": {
			"base": "1f482-1f3fc",
			"non_fully_qualified": "1f482-1f3fc",
			"decimal": "&#128130;&#127996;"
		},
		"name": "guardsman tone 2",
		"shortname": ":guardsman_tone2:",
		"category": "people",
		"emoji_order": "377",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f482-1f3fd": {
		"code_points": {
			"base": "1f482-1f3fd",
			"non_fully_qualified": "1f482-1f3fd",
			"decimal": "&#128130;&#127997;"
		},
		"name": "guardsman tone 3",
		"shortname": ":guardsman_tone3:",
		"category": "people",
		"emoji_order": "378",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f482-1f3fe": {
		"code_points": {
			"base": "1f482-1f3fe",
			"non_fully_qualified": "1f482-1f3fe",
			"decimal": "&#128130;&#127998;"
		},
		"name": "guardsman tone 4",
		"shortname": ":guardsman_tone4:",
		"category": "people",
		"emoji_order": "379",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f482-1f3ff": {
		"code_points": {
			"base": "1f482-1f3ff",
			"non_fully_qualified": "1f482-1f3ff",
			"decimal": "&#128130;&#127999;"
		},
		"name": "guardsman tone 5",
		"shortname": ":guardsman_tone5:",
		"category": "people",
		"emoji_order": "380",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f477": {
		"code_points": {
			"base": "1f477",
			"non_fully_qualified": "1f477",
			"decimal": "&#128119;"
		},
		"name": "construction worker",
		"shortname": ":construction_worker:",
		"category": "people",
		"emoji_order": "393",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "hat", "men", "diversity", "job"]
	},
	"1f477-1f3fb": {
		"code_points": {
			"base": "1f477-1f3fb",
			"non_fully_qualified": "1f477-1f3fb",
			"decimal": "&#128119;&#127995;"
		},
		"name": "construction worker tone 1",
		"shortname": ":construction_worker_tone1:",
		"category": "people",
		"emoji_order": "394",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f477-1f3fc": {
		"code_points": {
			"base": "1f477-1f3fc",
			"non_fully_qualified": "1f477-1f3fc",
			"decimal": "&#128119;&#127996;"
		},
		"name": "construction worker tone 2",
		"shortname": ":construction_worker_tone2:",
		"category": "people",
		"emoji_order": "395",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f477-1f3fd": {
		"code_points": {
			"base": "1f477-1f3fd",
			"non_fully_qualified": "1f477-1f3fd",
			"decimal": "&#128119;&#127997;"
		},
		"name": "construction worker tone 3",
		"shortname": ":construction_worker_tone3:",
		"category": "people",
		"emoji_order": "396",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f477-1f3fe": {
		"code_points": {
			"base": "1f477-1f3fe",
			"non_fully_qualified": "1f477-1f3fe",
			"decimal": "&#128119;&#127998;"
		},
		"name": "construction worker tone 4",
		"shortname": ":construction_worker_tone4:",
		"category": "people",
		"emoji_order": "397",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f477-1f3ff": {
		"code_points": {
			"base": "1f477-1f3ff",
			"non_fully_qualified": "1f477-1f3ff",
			"decimal": "&#128119;&#127999;"
		},
		"name": "construction worker tone 5",
		"shortname": ":construction_worker_tone5:",
		"category": "people",
		"emoji_order": "398",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f473": {
		"code_points": {
			"base": "1f473",
			"non_fully_qualified": "1f473",
			"decimal": "&#128115;"
		},
		"name": "man with turban",
		"shortname": ":man_with_turban:",
		"category": "people",
		"emoji_order": "411",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "hat", "diversity"]
	},
	"1f473-1f3fb": {
		"code_points": {
			"base": "1f473-1f3fb",
			"non_fully_qualified": "1f473-1f3fb",
			"decimal": "&#128115;&#127995;"
		},
		"name": "man with turban tone 1",
		"shortname": ":man_with_turban_tone1:",
		"category": "people",
		"emoji_order": "412",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f473-1f3fc": {
		"code_points": {
			"base": "1f473-1f3fc",
			"non_fully_qualified": "1f473-1f3fc",
			"decimal": "&#128115;&#127996;"
		},
		"name": "man with turban tone 2",
		"shortname": ":man_with_turban_tone2:",
		"category": "people",
		"emoji_order": "413",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f473-1f3fd": {
		"code_points": {
			"base": "1f473-1f3fd",
			"non_fully_qualified": "1f473-1f3fd",
			"decimal": "&#128115;&#127997;"
		},
		"name": "man with turban tone 3",
		"shortname": ":man_with_turban_tone3:",
		"category": "people",
		"emoji_order": "414",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f473-1f3fe": {
		"code_points": {
			"base": "1f473-1f3fe",
			"non_fully_qualified": "1f473-1f3fe",
			"decimal": "&#128115;&#127998;"
		},
		"name": "man with turban tone 4",
		"shortname": ":man_with_turban_tone4:",
		"category": "people",
		"emoji_order": "415",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f473-1f3ff": {
		"code_points": {
			"base": "1f473-1f3ff",
			"non_fully_qualified": "1f473-1f3ff",
			"decimal": "&#128115;&#127999;"
		},
		"name": "man with turban tone 5",
		"shortname": ":man_with_turban_tone5:",
		"category": "people",
		"emoji_order": "416",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f471": {
		"code_points": {
			"base": "1f471",
			"non_fully_qualified": "1f471",
			"decimal": "&#128113;"
		},
		"name": "person with blond hair",
		"shortname": ":person_with_blond_hair:",
		"category": "people",
		"emoji_order": "429",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "men", "diversity"]
	},
	"1f471-1f3fb": {
		"code_points": {
			"base": "1f471-1f3fb",
			"non_fully_qualified": "1f471-1f3fb",
			"decimal": "&#128113;&#127995;"
		},
		"name": "person with blond hair tone 1",
		"shortname": ":person_with_blond_hair_tone1:",
		"category": "people",
		"emoji_order": "430",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f471-1f3fc": {
		"code_points": {
			"base": "1f471-1f3fc",
			"non_fully_qualified": "1f471-1f3fc",
			"decimal": "&#128113;&#127996;"
		},
		"name": "person with blond hair tone 2",
		"shortname": ":person_with_blond_hair_tone2:",
		"category": "people",
		"emoji_order": "431",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f471-1f3fd": {
		"code_points": {
			"base": "1f471-1f3fd",
			"non_fully_qualified": "1f471-1f3fd",
			"decimal": "&#128113;&#127997;"
		},
		"name": "person with blond hair tone 3",
		"shortname": ":person_with_blond_hair_tone3:",
		"category": "people",
		"emoji_order": "432",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f471-1f3fe": {
		"code_points": {
			"base": "1f471-1f3fe",
			"non_fully_qualified": "1f471-1f3fe",
			"decimal": "&#128113;&#127998;"
		},
		"name": "person with blond hair tone 4",
		"shortname": ":person_with_blond_hair_tone4:",
		"category": "people",
		"emoji_order": "433",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f471-1f3ff": {
		"code_points": {
			"base": "1f471-1f3ff",
			"non_fully_qualified": "1f471-1f3ff",
			"decimal": "&#128113;&#127999;"
		},
		"name": "person with blond hair tone 5",
		"shortname": ":person_with_blond_hair_tone5:",
		"category": "people",
		"emoji_order": "434",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f385": {
		"code_points": {
			"base": "1f385",
			"non_fully_qualified": "1f385",
			"decimal": "&#127877;"
		},
		"name": "father christmas",
		"shortname": ":santa:",
		"category": "people",
		"emoji_order": "447",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "hat", "winter", "holidays", "christmas", "diversity", "santa"]
	},
	"1f385-1f3fb": {
		"code_points": {
			"base": "1f385-1f3fb",
			"non_fully_qualified": "1f385-1f3fb",
			"decimal": "&#127877;&#127995;"
		},
		"name": "father christmas tone 1",
		"shortname": ":santa_tone1:",
		"category": "people",
		"emoji_order": "448",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f385-1f3fc": {
		"code_points": {
			"base": "1f385-1f3fc",
			"non_fully_qualified": "1f385-1f3fc",
			"decimal": "&#127877;&#127996;"
		},
		"name": "father christmas tone 2",
		"shortname": ":santa_tone2:",
		"category": "people",
		"emoji_order": "449",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f385-1f3fd": {
		"code_points": {
			"base": "1f385-1f3fd",
			"non_fully_qualified": "1f385-1f3fd",
			"decimal": "&#127877;&#127997;"
		},
		"name": "father christmas tone 3",
		"shortname": ":santa_tone3:",
		"category": "people",
		"emoji_order": "450",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f385-1f3fe": {
		"code_points": {
			"base": "1f385-1f3fe",
			"non_fully_qualified": "1f385-1f3fe",
			"decimal": "&#127877;&#127998;"
		},
		"name": "father christmas tone 4",
		"shortname": ":santa_tone4:",
		"category": "people",
		"emoji_order": "451",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f385-1f3ff": {
		"code_points": {
			"base": "1f385-1f3ff",
			"non_fully_qualified": "1f385-1f3ff",
			"decimal": "&#127877;&#127999;"
		},
		"name": "father christmas tone 5",
		"shortname": ":santa_tone5:",
		"category": "people",
		"emoji_order": "452",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f936": {
		"code_points": {
			"base": "1f936",
			"non_fully_qualified": "1f936",
			"decimal": "&#129334;"
		},
		"name": "mother christmas",
		"shortname": ":mrs_claus:",
		"category": "people",
		"emoji_order": "453",
		"shortname_alternates": [":mother_christmas:"],
		"ascii": [],
		"keywords": []
	},
	"1f936-1f3fb": {
		"code_points": {
			"base": "1f936-1f3fb",
			"non_fully_qualified": "1f936-1f3fb",
			"decimal": "&#129334;&#127995;"
		},
		"name": "mother christmas tone 1",
		"shortname": ":mrs_claus_tone1:",
		"category": "people",
		"emoji_order": "454",
		"shortname_alternates": [":mother_christmas_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f936-1f3fc": {
		"code_points": {
			"base": "1f936-1f3fc",
			"non_fully_qualified": "1f936-1f3fc",
			"decimal": "&#129334;&#127996;"
		},
		"name": "mother christmas tone 2",
		"shortname": ":mrs_claus_tone2:",
		"category": "people",
		"emoji_order": "455",
		"shortname_alternates": [":mother_christmas_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f936-1f3fd": {
		"code_points": {
			"base": "1f936-1f3fd",
			"non_fully_qualified": "1f936-1f3fd",
			"decimal": "&#129334;&#127997;"
		},
		"name": "mother christmas tone 3",
		"shortname": ":mrs_claus_tone3:",
		"category": "people",
		"emoji_order": "456",
		"shortname_alternates": [":mother_christmas_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f936-1f3fe": {
		"code_points": {
			"base": "1f936-1f3fe",
			"non_fully_qualified": "1f936-1f3fe",
			"decimal": "&#129334;&#127998;"
		},
		"name": "mother christmas tone 4",
		"shortname": ":mrs_claus_tone4:",
		"category": "people",
		"emoji_order": "457",
		"shortname_alternates": [":mother_christmas_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f936-1f3ff": {
		"code_points": {
			"base": "1f936-1f3ff",
			"non_fully_qualified": "1f936-1f3ff",
			"decimal": "&#129334;&#127999;"
		},
		"name": "mother christmas tone 5",
		"shortname": ":mrs_claus_tone5:",
		"category": "people",
		"emoji_order": "458",
		"shortname_alternates": [":mother_christmas_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f478": {
		"code_points": {
			"base": "1f478",
			"non_fully_qualified": "1f478",
			"decimal": "&#128120;"
		},
		"name": "princess",
		"shortname": ":princess:",
		"category": "people",
		"emoji_order": "459",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "diversity", "beautiful", "girls night"]
	},
	"1f478-1f3fb": {
		"code_points": {
			"base": "1f478-1f3fb",
			"non_fully_qualified": "1f478-1f3fb",
			"decimal": "&#128120;&#127995;"
		},
		"name": "princess tone 1",
		"shortname": ":princess_tone1:",
		"category": "people",
		"emoji_order": "460",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f478-1f3fc": {
		"code_points": {
			"base": "1f478-1f3fc",
			"non_fully_qualified": "1f478-1f3fc",
			"decimal": "&#128120;&#127996;"
		},
		"name": "princess tone 2",
		"shortname": ":princess_tone2:",
		"category": "people",
		"emoji_order": "461",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f478-1f3fd": {
		"code_points": {
			"base": "1f478-1f3fd",
			"non_fully_qualified": "1f478-1f3fd",
			"decimal": "&#128120;&#127997;"
		},
		"name": "princess tone 3",
		"shortname": ":princess_tone3:",
		"category": "people",
		"emoji_order": "462",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f478-1f3fe": {
		"code_points": {
			"base": "1f478-1f3fe",
			"non_fully_qualified": "1f478-1f3fe",
			"decimal": "&#128120;&#127998;"
		},
		"name": "princess tone 4",
		"shortname": ":princess_tone4:",
		"category": "people",
		"emoji_order": "463",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f478-1f3ff": {
		"code_points": {
			"base": "1f478-1f3ff",
			"non_fully_qualified": "1f478-1f3ff",
			"decimal": "&#128120;&#127999;"
		},
		"name": "princess tone 5",
		"shortname": ":princess_tone5:",
		"category": "people",
		"emoji_order": "464",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f934": {
		"code_points": {
			"base": "1f934",
			"non_fully_qualified": "1f934",
			"decimal": "&#129332;"
		},
		"name": "prince",
		"shortname": ":prince:",
		"category": "people",
		"emoji_order": "465",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f934-1f3fb": {
		"code_points": {
			"base": "1f934-1f3fb",
			"non_fully_qualified": "1f934-1f3fb",
			"decimal": "&#129332;&#127995;"
		},
		"name": "prince tone 1",
		"shortname": ":prince_tone1:",
		"category": "people",
		"emoji_order": "466",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f934-1f3fc": {
		"code_points": {
			"base": "1f934-1f3fc",
			"non_fully_qualified": "1f934-1f3fc",
			"decimal": "&#129332;&#127996;"
		},
		"name": "prince tone 2",
		"shortname": ":prince_tone2:",
		"category": "people",
		"emoji_order": "467",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f934-1f3fd": {
		"code_points": {
			"base": "1f934-1f3fd",
			"non_fully_qualified": "1f934-1f3fd",
			"decimal": "&#129332;&#127997;"
		},
		"name": "prince tone 3",
		"shortname": ":prince_tone3:",
		"category": "people",
		"emoji_order": "468",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f934-1f3fe": {
		"code_points": {
			"base": "1f934-1f3fe",
			"non_fully_qualified": "1f934-1f3fe",
			"decimal": "&#129332;&#127998;"
		},
		"name": "prince tone 4",
		"shortname": ":prince_tone4:",
		"category": "people",
		"emoji_order": "469",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f934-1f3ff": {
		"code_points": {
			"base": "1f934-1f3ff",
			"non_fully_qualified": "1f934-1f3ff",
			"decimal": "&#129332;&#127999;"
		},
		"name": "prince tone 5",
		"shortname": ":prince_tone5:",
		"category": "people",
		"emoji_order": "470",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f470": {
		"code_points": {
			"base": "1f470",
			"non_fully_qualified": "1f470",
			"decimal": "&#128112;"
		},
		"name": "bride with veil",
		"shortname": ":bride_with_veil:",
		"category": "people",
		"emoji_order": "471",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "wedding", "women", "diversity"]
	},
	"1f470-1f3fb": {
		"code_points": {
			"base": "1f470-1f3fb",
			"non_fully_qualified": "1f470-1f3fb",
			"decimal": "&#128112;&#127995;"
		},
		"name": "bride with veil tone 1",
		"shortname": ":bride_with_veil_tone1:",
		"category": "people",
		"emoji_order": "472",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f470-1f3fc": {
		"code_points": {
			"base": "1f470-1f3fc",
			"non_fully_qualified": "1f470-1f3fc",
			"decimal": "&#128112;&#127996;"
		},
		"name": "bride with veil tone 2",
		"shortname": ":bride_with_veil_tone2:",
		"category": "people",
		"emoji_order": "473",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f470-1f3fd": {
		"code_points": {
			"base": "1f470-1f3fd",
			"non_fully_qualified": "1f470-1f3fd",
			"decimal": "&#128112;&#127997;"
		},
		"name": "bride with veil tone 3",
		"shortname": ":bride_with_veil_tone3:",
		"category": "people",
		"emoji_order": "474",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f470-1f3fe": {
		"code_points": {
			"base": "1f470-1f3fe",
			"non_fully_qualified": "1f470-1f3fe",
			"decimal": "&#128112;&#127998;"
		},
		"name": "bride with veil tone 4",
		"shortname": ":bride_with_veil_tone4:",
		"category": "people",
		"emoji_order": "475",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f470-1f3ff": {
		"code_points": {
			"base": "1f470-1f3ff",
			"non_fully_qualified": "1f470-1f3ff",
			"decimal": "&#128112;&#127999;"
		},
		"name": "bride with veil tone 5",
		"shortname": ":bride_with_veil_tone5:",
		"category": "people",
		"emoji_order": "476",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f935": {
		"code_points": {
			"base": "1f935",
			"non_fully_qualified": "1f935",
			"decimal": "&#129333;"
		},
		"name": "man in tuxedo",
		"shortname": ":man_in_tuxedo:",
		"category": "people",
		"emoji_order": "477",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f935-1f3fb": {
		"code_points": {
			"base": "1f935-1f3fb",
			"non_fully_qualified": "1f935-1f3fb",
			"decimal": "&#129333;&#127995;"
		},
		"name": "man in tuxedo tone 1",
		"shortname": ":man_in_tuxedo_tone1:",
		"category": "people",
		"emoji_order": "478",
		"shortname_alternates": [":tuxedo_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f935-1f3fc": {
		"code_points": {
			"base": "1f935-1f3fc",
			"non_fully_qualified": "1f935-1f3fc",
			"decimal": "&#129333;&#127996;"
		},
		"name": "man in tuxedo tone 2",
		"shortname": ":man_in_tuxedo_tone2:",
		"category": "people",
		"emoji_order": "479",
		"shortname_alternates": [":tuxedo_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f935-1f3fd": {
		"code_points": {
			"base": "1f935-1f3fd",
			"non_fully_qualified": "1f935-1f3fd",
			"decimal": "&#129333;&#127997;"
		},
		"name": "man in tuxedo tone 3",
		"shortname": ":man_in_tuxedo_tone3:",
		"category": "people",
		"emoji_order": "480",
		"shortname_alternates": [":tuxedo_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f935-1f3fe": {
		"code_points": {
			"base": "1f935-1f3fe",
			"non_fully_qualified": "1f935-1f3fe",
			"decimal": "&#129333;&#127998;"
		},
		"name": "man in tuxedo tone 4",
		"shortname": ":man_in_tuxedo_tone4:",
		"category": "people",
		"emoji_order": "481",
		"shortname_alternates": [":tuxedo_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f935-1f3ff": {
		"code_points": {
			"base": "1f935-1f3ff",
			"non_fully_qualified": "1f935-1f3ff",
			"decimal": "&#129333;&#127999;"
		},
		"name": "man in tuxedo tone 5",
		"shortname": ":man_in_tuxedo_tone5:",
		"category": "people",
		"emoji_order": "482",
		"shortname_alternates": [":tuxedo_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f930": {
		"code_points": {
			"base": "1f930",
			"non_fully_qualified": "1f930",
			"decimal": "&#129328;"
		},
		"name": "pregnant woman",
		"shortname": ":pregnant_woman:",
		"category": "people",
		"emoji_order": "483",
		"shortname_alternates": [":expecting_woman:"],
		"ascii": [],
		"keywords": []
	},
	"1f930-1f3fb": {
		"code_points": {
			"base": "1f930-1f3fb",
			"non_fully_qualified": "1f930-1f3fb",
			"decimal": "&#129328;&#127995;"
		},
		"name": "pregnant woman tone 1",
		"shortname": ":pregnant_woman_tone1:",
		"category": "people",
		"emoji_order": "484",
		"shortname_alternates": [":expecting_woman_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f930-1f3fc": {
		"code_points": {
			"base": "1f930-1f3fc",
			"non_fully_qualified": "1f930-1f3fc",
			"decimal": "&#129328;&#127996;"
		},
		"name": "pregnant woman tone 2",
		"shortname": ":pregnant_woman_tone2:",
		"category": "people",
		"emoji_order": "485",
		"shortname_alternates": [":expecting_woman_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f930-1f3fd": {
		"code_points": {
			"base": "1f930-1f3fd",
			"non_fully_qualified": "1f930-1f3fd",
			"decimal": "&#129328;&#127997;"
		},
		"name": "pregnant woman tone 3",
		"shortname": ":pregnant_woman_tone3:",
		"category": "people",
		"emoji_order": "486",
		"shortname_alternates": [":expecting_woman_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f930-1f3fe": {
		"code_points": {
			"base": "1f930-1f3fe",
			"non_fully_qualified": "1f930-1f3fe",
			"decimal": "&#129328;&#127998;"
		},
		"name": "pregnant woman tone 4",
		"shortname": ":pregnant_woman_tone4:",
		"category": "people",
		"emoji_order": "487",
		"shortname_alternates": [":expecting_woman_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f930-1f3ff": {
		"code_points": {
			"base": "1f930-1f3ff",
			"non_fully_qualified": "1f930-1f3ff",
			"decimal": "&#129328;&#127999;"
		},
		"name": "pregnant woman tone 5",
		"shortname": ":pregnant_woman_tone5:",
		"category": "people",
		"emoji_order": "488",
		"shortname_alternates": [":expecting_woman_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f472": {
		"code_points": {
			"base": "1f472",
			"non_fully_qualified": "1f472",
			"decimal": "&#128114;"
		},
		"name": "man with gua pi mao",
		"shortname": ":man_with_gua_pi_mao:",
		"category": "people",
		"emoji_order": "489",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "hat", "men", "diversity"]
	},
	"1f472-1f3fb": {
		"code_points": {
			"base": "1f472-1f3fb",
			"non_fully_qualified": "1f472-1f3fb",
			"decimal": "&#128114;&#127995;"
		},
		"name": "man with gua pi mao tone 1",
		"shortname": ":man_with_gua_pi_mao_tone1:",
		"category": "people",
		"emoji_order": "490",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f472-1f3fc": {
		"code_points": {
			"base": "1f472-1f3fc",
			"non_fully_qualified": "1f472-1f3fc",
			"decimal": "&#128114;&#127996;"
		},
		"name": "man with gua pi mao tone 2",
		"shortname": ":man_with_gua_pi_mao_tone2:",
		"category": "people",
		"emoji_order": "491",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f472-1f3fd": {
		"code_points": {
			"base": "1f472-1f3fd",
			"non_fully_qualified": "1f472-1f3fd",
			"decimal": "&#128114;&#127997;"
		},
		"name": "man with gua pi mao tone 3",
		"shortname": ":man_with_gua_pi_mao_tone3:",
		"category": "people",
		"emoji_order": "492",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f472-1f3fe": {
		"code_points": {
			"base": "1f472-1f3fe",
			"non_fully_qualified": "1f472-1f3fe",
			"decimal": "&#128114;&#127998;"
		},
		"name": "man with gua pi mao tone 4",
		"shortname": ":man_with_gua_pi_mao_tone4:",
		"category": "people",
		"emoji_order": "493",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f472-1f3ff": {
		"code_points": {
			"base": "1f472-1f3ff",
			"non_fully_qualified": "1f472-1f3ff",
			"decimal": "&#128114;&#127999;"
		},
		"name": "man with gua pi mao tone 5",
		"shortname": ":man_with_gua_pi_mao_tone5:",
		"category": "people",
		"emoji_order": "494",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64d": {
		"code_points": {
			"base": "1f64d",
			"non_fully_qualified": "1f64d",
			"decimal": "&#128589;"
		},
		"name": "person frowning",
		"shortname": ":person_frowning:",
		"category": "people",
		"emoji_order": "495",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "diversity"]
	},
	"1f64d-1f3fb": {
		"code_points": {
			"base": "1f64d-1f3fb",
			"non_fully_qualified": "1f64d-1f3fb",
			"decimal": "&#128589;&#127995;"
		},
		"name": "person frowning tone 1",
		"shortname": ":person_frowning_tone1:",
		"category": "people",
		"emoji_order": "496",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64d-1f3fc": {
		"code_points": {
			"base": "1f64d-1f3fc",
			"non_fully_qualified": "1f64d-1f3fc",
			"decimal": "&#128589;&#127996;"
		},
		"name": "person frowning tone 2",
		"shortname": ":person_frowning_tone2:",
		"category": "people",
		"emoji_order": "497",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64d-1f3fd": {
		"code_points": {
			"base": "1f64d-1f3fd",
			"non_fully_qualified": "1f64d-1f3fd",
			"decimal": "&#128589;&#127997;"
		},
		"name": "person frowning tone 3",
		"shortname": ":person_frowning_tone3:",
		"category": "people",
		"emoji_order": "498",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64d-1f3fe": {
		"code_points": {
			"base": "1f64d-1f3fe",
			"non_fully_qualified": "1f64d-1f3fe",
			"decimal": "&#128589;&#127998;"
		},
		"name": "person frowning tone 4",
		"shortname": ":person_frowning_tone4:",
		"category": "people",
		"emoji_order": "499",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64d-1f3ff": {
		"code_points": {
			"base": "1f64d-1f3ff",
			"non_fully_qualified": "1f64d-1f3ff",
			"decimal": "&#128589;&#127999;"
		},
		"name": "person frowning tone 5",
		"shortname": ":person_frowning_tone5:",
		"category": "people",
		"emoji_order": "500",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64e": {
		"code_points": {
			"base": "1f64e",
			"non_fully_qualified": "1f64e",
			"decimal": "&#128590;"
		},
		"name": "person with pouting face",
		"shortname": ":person_with_pouting_face:",
		"category": "people",
		"emoji_order": "513",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "diversity"]
	},
	"1f64e-1f3fb": {
		"code_points": {
			"base": "1f64e-1f3fb",
			"non_fully_qualified": "1f64e-1f3fb",
			"decimal": "&#128590;&#127995;"
		},
		"name": "person with pouting face tone1",
		"shortname": ":person_with_pouting_face_tone1:",
		"category": "people",
		"emoji_order": "514",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64e-1f3fc": {
		"code_points": {
			"base": "1f64e-1f3fc",
			"non_fully_qualified": "1f64e-1f3fc",
			"decimal": "&#128590;&#127996;"
		},
		"name": "person with pouting face tone2",
		"shortname": ":person_with_pouting_face_tone2:",
		"category": "people",
		"emoji_order": "515",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64e-1f3fd": {
		"code_points": {
			"base": "1f64e-1f3fd",
			"non_fully_qualified": "1f64e-1f3fd",
			"decimal": "&#128590;&#127997;"
		},
		"name": "person with pouting face tone3",
		"shortname": ":person_with_pouting_face_tone3:",
		"category": "people",
		"emoji_order": "516",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64e-1f3fe": {
		"code_points": {
			"base": "1f64e-1f3fe",
			"non_fully_qualified": "1f64e-1f3fe",
			"decimal": "&#128590;&#127998;"
		},
		"name": "person with pouting face tone4",
		"shortname": ":person_with_pouting_face_tone4:",
		"category": "people",
		"emoji_order": "517",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64e-1f3ff": {
		"code_points": {
			"base": "1f64e-1f3ff",
			"non_fully_qualified": "1f64e-1f3ff",
			"decimal": "&#128590;&#127999;"
		},
		"name": "person with pouting face tone5",
		"shortname": ":person_with_pouting_face_tone5:",
		"category": "people",
		"emoji_order": "518",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f645": {
		"code_points": {
			"base": "1f645",
			"non_fully_qualified": "1f645",
			"decimal": "&#128581;"
		},
		"name": "face with no good gesture",
		"shortname": ":no_good:",
		"category": "people",
		"emoji_order": "531",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "diversity", "girls night"]
	},
	"1f645-1f3fb": {
		"code_points": {
			"base": "1f645-1f3fb",
			"non_fully_qualified": "1f645-1f3fb",
			"decimal": "&#128581;&#127995;"
		},
		"name": "face with no good gesture tone 1",
		"shortname": ":no_good_tone1:",
		"category": "people",
		"emoji_order": "532",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f645-1f3fc": {
		"code_points": {
			"base": "1f645-1f3fc",
			"non_fully_qualified": "1f645-1f3fc",
			"decimal": "&#128581;&#127996;"
		},
		"name": "face with no good gesture tone 2",
		"shortname": ":no_good_tone2:",
		"category": "people",
		"emoji_order": "533",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f645-1f3fd": {
		"code_points": {
			"base": "1f645-1f3fd",
			"non_fully_qualified": "1f645-1f3fd",
			"decimal": "&#128581;&#127997;"
		},
		"name": "face with no good gesture tone 3",
		"shortname": ":no_good_tone3:",
		"category": "people",
		"emoji_order": "534",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f645-1f3fe": {
		"code_points": {
			"base": "1f645-1f3fe",
			"non_fully_qualified": "1f645-1f3fe",
			"decimal": "&#128581;&#127998;"
		},
		"name": "face with no good gesture tone 4",
		"shortname": ":no_good_tone4:",
		"category": "people",
		"emoji_order": "535",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f645-1f3ff": {
		"code_points": {
			"base": "1f645-1f3ff",
			"non_fully_qualified": "1f645-1f3ff",
			"decimal": "&#128581;&#127999;"
		},
		"name": "face with no good gesture tone 5",
		"shortname": ":no_good_tone5:",
		"category": "people",
		"emoji_order": "536",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f646": {
		"code_points": {
			"base": "1f646",
			"non_fully_qualified": "1f646",
			"decimal": "&#128582;"
		},
		"name": "face with ok gesture",
		"shortname": ":ok_woman:",
		"category": "people",
		"emoji_order": "549",
		"shortname_alternates": [],
		"ascii": ["*\\0\/*", "\\0\/", "*\\O\/*", "\\O\/"],
		"keywords": ["people", "women", "diversity"]
	},
	"1f646-1f3fb": {
		"code_points": {
			"base": "1f646-1f3fb",
			"non_fully_qualified": "1f646-1f3fb",
			"decimal": "&#128582;&#127995;"
		},
		"name": "face with ok gesture tone1",
		"shortname": ":ok_woman_tone1:",
		"category": "people",
		"emoji_order": "550",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f646-1f3fc": {
		"code_points": {
			"base": "1f646-1f3fc",
			"non_fully_qualified": "1f646-1f3fc",
			"decimal": "&#128582;&#127996;"
		},
		"name": "face with ok gesture tone2",
		"shortname": ":ok_woman_tone2:",
		"category": "people",
		"emoji_order": "551",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f646-1f3fd": {
		"code_points": {
			"base": "1f646-1f3fd",
			"non_fully_qualified": "1f646-1f3fd",
			"decimal": "&#128582;&#127997;"
		},
		"name": "face with ok gesture tone3",
		"shortname": ":ok_woman_tone3:",
		"category": "people",
		"emoji_order": "552",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f646-1f3fe": {
		"code_points": {
			"base": "1f646-1f3fe",
			"non_fully_qualified": "1f646-1f3fe",
			"decimal": "&#128582;&#127998;"
		},
		"name": "face with ok gesture tone4",
		"shortname": ":ok_woman_tone4:",
		"category": "people",
		"emoji_order": "553",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f646-1f3ff": {
		"code_points": {
			"base": "1f646-1f3ff",
			"non_fully_qualified": "1f646-1f3ff",
			"decimal": "&#128582;&#127999;"
		},
		"name": "face with ok gesture tone5",
		"shortname": ":ok_woman_tone5:",
		"category": "people",
		"emoji_order": "554",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f481": {
		"code_points": {
			"base": "1f481",
			"non_fully_qualified": "1f481",
			"decimal": "&#128129;"
		},
		"name": "information desk person",
		"shortname": ":information_desk_person:",
		"category": "people",
		"emoji_order": "567",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "diversity"]
	},
	"1f481-1f3fb": {
		"code_points": {
			"base": "1f481-1f3fb",
			"non_fully_qualified": "1f481-1f3fb",
			"decimal": "&#128129;&#127995;"
		},
		"name": "information desk person tone 1",
		"shortname": ":information_desk_person_tone1:",
		"category": "people",
		"emoji_order": "568",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f481-1f3fc": {
		"code_points": {
			"base": "1f481-1f3fc",
			"non_fully_qualified": "1f481-1f3fc",
			"decimal": "&#128129;&#127996;"
		},
		"name": "information desk person tone 2",
		"shortname": ":information_desk_person_tone2:",
		"category": "people",
		"emoji_order": "569",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f481-1f3fd": {
		"code_points": {
			"base": "1f481-1f3fd",
			"non_fully_qualified": "1f481-1f3fd",
			"decimal": "&#128129;&#127997;"
		},
		"name": "information desk person tone 3",
		"shortname": ":information_desk_person_tone3:",
		"category": "people",
		"emoji_order": "570",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f481-1f3fe": {
		"code_points": {
			"base": "1f481-1f3fe",
			"non_fully_qualified": "1f481-1f3fe",
			"decimal": "&#128129;&#127998;"
		},
		"name": "information desk person tone 4",
		"shortname": ":information_desk_person_tone4:",
		"category": "people",
		"emoji_order": "571",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f481-1f3ff": {
		"code_points": {
			"base": "1f481-1f3ff",
			"non_fully_qualified": "1f481-1f3ff",
			"decimal": "&#128129;&#127999;"
		},
		"name": "information desk person tone 5",
		"shortname": ":information_desk_person_tone5:",
		"category": "people",
		"emoji_order": "572",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64b": {
		"code_points": {
			"base": "1f64b",
			"non_fully_qualified": "1f64b",
			"decimal": "&#128587;"
		},
		"name": "happy person raising one hand",
		"shortname": ":raising_hand:",
		"category": "people",
		"emoji_order": "585",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "diversity"]
	},
	"1f64b-1f3fb": {
		"code_points": {
			"base": "1f64b-1f3fb",
			"non_fully_qualified": "1f64b-1f3fb",
			"decimal": "&#128587;&#127995;"
		},
		"name": "happy person raising one hand tone1",
		"shortname": ":raising_hand_tone1:",
		"category": "people",
		"emoji_order": "586",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64b-1f3fc": {
		"code_points": {
			"base": "1f64b-1f3fc",
			"non_fully_qualified": "1f64b-1f3fc",
			"decimal": "&#128587;&#127996;"
		},
		"name": "happy person raising one hand tone2",
		"shortname": ":raising_hand_tone2:",
		"category": "people",
		"emoji_order": "587",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64b-1f3fd": {
		"code_points": {
			"base": "1f64b-1f3fd",
			"non_fully_qualified": "1f64b-1f3fd",
			"decimal": "&#128587;&#127997;"
		},
		"name": "happy person raising one hand tone3",
		"shortname": ":raising_hand_tone3:",
		"category": "people",
		"emoji_order": "588",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64b-1f3fe": {
		"code_points": {
			"base": "1f64b-1f3fe",
			"non_fully_qualified": "1f64b-1f3fe",
			"decimal": "&#128587;&#127998;"
		},
		"name": "happy person raising one hand tone4",
		"shortname": ":raising_hand_tone4:",
		"category": "people",
		"emoji_order": "589",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64b-1f3ff": {
		"code_points": {
			"base": "1f64b-1f3ff",
			"non_fully_qualified": "1f64b-1f3ff",
			"decimal": "&#128587;&#127999;"
		},
		"name": "happy person raising one hand tone5",
		"shortname": ":raising_hand_tone5:",
		"category": "people",
		"emoji_order": "590",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f647": {
		"code_points": {
			"base": "1f647",
			"non_fully_qualified": "1f647",
			"decimal": "&#128583;"
		},
		"name": "person bowing deeply",
		"shortname": ":bow:",
		"category": "people",
		"emoji_order": "603",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "pray", "diversity"]
	},
	"1f647-1f3fb": {
		"code_points": {
			"base": "1f647-1f3fb",
			"non_fully_qualified": "1f647-1f3fb",
			"decimal": "&#128583;&#127995;"
		},
		"name": "person bowing deeply tone 1",
		"shortname": ":bow_tone1:",
		"category": "people",
		"emoji_order": "604",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f647-1f3fc": {
		"code_points": {
			"base": "1f647-1f3fc",
			"non_fully_qualified": "1f647-1f3fc",
			"decimal": "&#128583;&#127996;"
		},
		"name": "person bowing deeply tone 2",
		"shortname": ":bow_tone2:",
		"category": "people",
		"emoji_order": "605",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f647-1f3fd": {
		"code_points": {
			"base": "1f647-1f3fd",
			"non_fully_qualified": "1f647-1f3fd",
			"decimal": "&#128583;&#127997;"
		},
		"name": "person bowing deeply tone 3",
		"shortname": ":bow_tone3:",
		"category": "people",
		"emoji_order": "606",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f647-1f3fe": {
		"code_points": {
			"base": "1f647-1f3fe",
			"non_fully_qualified": "1f647-1f3fe",
			"decimal": "&#128583;&#127998;"
		},
		"name": "person bowing deeply tone 4",
		"shortname": ":bow_tone4:",
		"category": "people",
		"emoji_order": "607",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f647-1f3ff": {
		"code_points": {
			"base": "1f647-1f3ff",
			"non_fully_qualified": "1f647-1f3ff",
			"decimal": "&#128583;&#127999;"
		},
		"name": "person bowing deeply tone 5",
		"shortname": ":bow_tone5:",
		"category": "people",
		"emoji_order": "608",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f926": {
		"code_points": {
			"base": "1f926",
			"non_fully_qualified": "1f926",
			"decimal": "&#129318;"
		},
		"name": "face palm",
		"shortname": ":face_palm:",
		"category": "people",
		"emoji_order": "621",
		"shortname_alternates": [":facepalm:"],
		"ascii": [],
		"keywords": []
	},
	"1f926-1f3fb": {
		"code_points": {
			"base": "1f926-1f3fb",
			"non_fully_qualified": "1f926-1f3fb",
			"decimal": "&#129318;&#127995;"
		},
		"name": "face palm tone 1",
		"shortname": ":face_palm_tone1:",
		"category": "people",
		"emoji_order": "622",
		"shortname_alternates": [":facepalm_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f926-1f3fc": {
		"code_points": {
			"base": "1f926-1f3fc",
			"non_fully_qualified": "1f926-1f3fc",
			"decimal": "&#129318;&#127996;"
		},
		"name": "face palm tone 2",
		"shortname": ":face_palm_tone2:",
		"category": "people",
		"emoji_order": "623",
		"shortname_alternates": [":facepalm_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f926-1f3fd": {
		"code_points": {
			"base": "1f926-1f3fd",
			"non_fully_qualified": "1f926-1f3fd",
			"decimal": "&#129318;&#127997;"
		},
		"name": "face palm tone 3",
		"shortname": ":face_palm_tone3:",
		"category": "people",
		"emoji_order": "624",
		"shortname_alternates": [":facepalm_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f926-1f3fe": {
		"code_points": {
			"base": "1f926-1f3fe",
			"non_fully_qualified": "1f926-1f3fe",
			"decimal": "&#129318;&#127998;"
		},
		"name": "face palm tone 4",
		"shortname": ":face_palm_tone4:",
		"category": "people",
		"emoji_order": "625",
		"shortname_alternates": [":facepalm_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f926-1f3ff": {
		"code_points": {
			"base": "1f926-1f3ff",
			"non_fully_qualified": "1f926-1f3ff",
			"decimal": "&#129318;&#127999;"
		},
		"name": "face palm tone 5",
		"shortname": ":face_palm_tone5:",
		"category": "people",
		"emoji_order": "626",
		"shortname_alternates": [":facepalm_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f937": {
		"code_points": {
			"base": "1f937",
			"non_fully_qualified": "1f937",
			"decimal": "&#129335;"
		},
		"name": "shrug",
		"shortname": ":shrug:",
		"category": "people",
		"emoji_order": "639",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f937-1f3fb": {
		"code_points": {
			"base": "1f937-1f3fb",
			"non_fully_qualified": "1f937-1f3fb",
			"decimal": "&#129335;&#127995;"
		},
		"name": "shrug tone 1",
		"shortname": ":shrug_tone1:",
		"category": "people",
		"emoji_order": "640",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f937-1f3fc": {
		"code_points": {
			"base": "1f937-1f3fc",
			"non_fully_qualified": "1f937-1f3fc",
			"decimal": "&#129335;&#127996;"
		},
		"name": "shrug tone 2",
		"shortname": ":shrug_tone2:",
		"category": "people",
		"emoji_order": "641",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f937-1f3fd": {
		"code_points": {
			"base": "1f937-1f3fd",
			"non_fully_qualified": "1f937-1f3fd",
			"decimal": "&#129335;&#127997;"
		},
		"name": "shrug tone 3",
		"shortname": ":shrug_tone3:",
		"category": "people",
		"emoji_order": "642",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f937-1f3fe": {
		"code_points": {
			"base": "1f937-1f3fe",
			"non_fully_qualified": "1f937-1f3fe",
			"decimal": "&#129335;&#127998;"
		},
		"name": "shrug tone 4",
		"shortname": ":shrug_tone4:",
		"category": "people",
		"emoji_order": "643",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f937-1f3ff": {
		"code_points": {
			"base": "1f937-1f3ff",
			"non_fully_qualified": "1f937-1f3ff",
			"decimal": "&#129335;&#127999;"
		},
		"name": "shrug tone 5",
		"shortname": ":shrug_tone5:",
		"category": "people",
		"emoji_order": "644",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f486": {
		"code_points": {
			"base": "1f486",
			"non_fully_qualified": "1f486",
			"decimal": "&#128134;"
		},
		"name": "face massage",
		"shortname": ":massage:",
		"category": "people",
		"emoji_order": "657",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "diversity"]
	},
	"1f486-1f3fb": {
		"code_points": {
			"base": "1f486-1f3fb",
			"non_fully_qualified": "1f486-1f3fb",
			"decimal": "&#128134;&#127995;"
		},
		"name": "face massage tone 1",
		"shortname": ":massage_tone1:",
		"category": "people",
		"emoji_order": "658",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f486-1f3fc": {
		"code_points": {
			"base": "1f486-1f3fc",
			"non_fully_qualified": "1f486-1f3fc",
			"decimal": "&#128134;&#127996;"
		},
		"name": "face massage tone 2",
		"shortname": ":massage_tone2:",
		"category": "people",
		"emoji_order": "659",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f486-1f3fd": {
		"code_points": {
			"base": "1f486-1f3fd",
			"non_fully_qualified": "1f486-1f3fd",
			"decimal": "&#128134;&#127997;"
		},
		"name": "face massage tone 3",
		"shortname": ":massage_tone3:",
		"category": "people",
		"emoji_order": "660",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f486-1f3fe": {
		"code_points": {
			"base": "1f486-1f3fe",
			"non_fully_qualified": "1f486-1f3fe",
			"decimal": "&#128134;&#127998;"
		},
		"name": "face massage tone 4",
		"shortname": ":massage_tone4:",
		"category": "people",
		"emoji_order": "661",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f486-1f3ff": {
		"code_points": {
			"base": "1f486-1f3ff",
			"non_fully_qualified": "1f486-1f3ff",
			"decimal": "&#128134;&#127999;"
		},
		"name": "face massage tone 5",
		"shortname": ":massage_tone5:",
		"category": "people",
		"emoji_order": "662",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f487": {
		"code_points": {
			"base": "1f487",
			"non_fully_qualified": "1f487",
			"decimal": "&#128135;"
		},
		"name": "haircut",
		"shortname": ":haircut:",
		"category": "people",
		"emoji_order": "675",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "diversity"]
	},
	"1f487-1f3fb": {
		"code_points": {
			"base": "1f487-1f3fb",
			"non_fully_qualified": "1f487-1f3fb",
			"decimal": "&#128135;&#127995;"
		},
		"name": "haircut tone 1",
		"shortname": ":haircut_tone1:",
		"category": "people",
		"emoji_order": "676",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f487-1f3fc": {
		"code_points": {
			"base": "1f487-1f3fc",
			"non_fully_qualified": "1f487-1f3fc",
			"decimal": "&#128135;&#127996;"
		},
		"name": "haircut tone 2",
		"shortname": ":haircut_tone2:",
		"category": "people",
		"emoji_order": "677",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f487-1f3fd": {
		"code_points": {
			"base": "1f487-1f3fd",
			"non_fully_qualified": "1f487-1f3fd",
			"decimal": "&#128135;&#127997;"
		},
		"name": "haircut tone 3",
		"shortname": ":haircut_tone3:",
		"category": "people",
		"emoji_order": "678",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f487-1f3fe": {
		"code_points": {
			"base": "1f487-1f3fe",
			"non_fully_qualified": "1f487-1f3fe",
			"decimal": "&#128135;&#127998;"
		},
		"name": "haircut tone 4",
		"shortname": ":haircut_tone4:",
		"category": "people",
		"emoji_order": "679",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f487-1f3ff": {
		"code_points": {
			"base": "1f487-1f3ff",
			"non_fully_qualified": "1f487-1f3ff",
			"decimal": "&#128135;&#127999;"
		},
		"name": "haircut tone 5",
		"shortname": ":haircut_tone5:",
		"category": "people",
		"emoji_order": "680",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b6": {
		"code_points": {
			"base": "1f6b6",
			"non_fully_qualified": "1f6b6",
			"decimal": "&#128694;"
		},
		"name": "pedestrian",
		"shortname": ":walking:",
		"category": "people",
		"emoji_order": "693",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "men", "diversity"]
	},
	"1f6b6-1f3fb": {
		"code_points": {
			"base": "1f6b6-1f3fb",
			"non_fully_qualified": "1f6b6-1f3fb",
			"decimal": "&#128694;&#127995;"
		},
		"name": "pedestrian tone 1",
		"shortname": ":walking_tone1:",
		"category": "people",
		"emoji_order": "694",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b6-1f3fc": {
		"code_points": {
			"base": "1f6b6-1f3fc",
			"non_fully_qualified": "1f6b6-1f3fc",
			"decimal": "&#128694;&#127996;"
		},
		"name": "pedestrian tone 2",
		"shortname": ":walking_tone2:",
		"category": "people",
		"emoji_order": "695",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b6-1f3fd": {
		"code_points": {
			"base": "1f6b6-1f3fd",
			"non_fully_qualified": "1f6b6-1f3fd",
			"decimal": "&#128694;&#127997;"
		},
		"name": "pedestrian tone 3",
		"shortname": ":walking_tone3:",
		"category": "people",
		"emoji_order": "696",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b6-1f3fe": {
		"code_points": {
			"base": "1f6b6-1f3fe",
			"non_fully_qualified": "1f6b6-1f3fe",
			"decimal": "&#128694;&#127998;"
		},
		"name": "pedestrian tone 4",
		"shortname": ":walking_tone4:",
		"category": "people",
		"emoji_order": "697",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b6-1f3ff": {
		"code_points": {
			"base": "1f6b6-1f3ff",
			"non_fully_qualified": "1f6b6-1f3ff",
			"decimal": "&#128694;&#127999;"
		},
		"name": "pedestrian tone 5",
		"shortname": ":walking_tone5:",
		"category": "people",
		"emoji_order": "698",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c3": {
		"code_points": {
			"base": "1f3c3",
			"non_fully_qualified": "1f3c3",
			"decimal": "&#127939;"
		},
		"name": "runner",
		"shortname": ":runner:",
		"category": "people",
		"emoji_order": "711",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "men", "diversity", "boys night", "run"]
	},
	"1f3c3-1f3fb": {
		"code_points": {
			"base": "1f3c3-1f3fb",
			"non_fully_qualified": "1f3c3-1f3fb",
			"decimal": "&#127939;&#127995;"
		},
		"name": "runner tone 1",
		"shortname": ":runner_tone1:",
		"category": "people",
		"emoji_order": "712",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c3-1f3fc": {
		"code_points": {
			"base": "1f3c3-1f3fc",
			"non_fully_qualified": "1f3c3-1f3fc",
			"decimal": "&#127939;&#127996;"
		},
		"name": "runner tone 2",
		"shortname": ":runner_tone2:",
		"category": "people",
		"emoji_order": "713",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c3-1f3fd": {
		"code_points": {
			"base": "1f3c3-1f3fd",
			"non_fully_qualified": "1f3c3-1f3fd",
			"decimal": "&#127939;&#127997;"
		},
		"name": "runner tone 3",
		"shortname": ":runner_tone3:",
		"category": "people",
		"emoji_order": "714",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c3-1f3fe": {
		"code_points": {
			"base": "1f3c3-1f3fe",
			"non_fully_qualified": "1f3c3-1f3fe",
			"decimal": "&#127939;&#127998;"
		},
		"name": "runner tone 4",
		"shortname": ":runner_tone4:",
		"category": "people",
		"emoji_order": "715",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c3-1f3ff": {
		"code_points": {
			"base": "1f3c3-1f3ff",
			"non_fully_qualified": "1f3c3-1f3ff",
			"decimal": "&#127939;&#127999;"
		},
		"name": "runner tone 5",
		"shortname": ":runner_tone5:",
		"category": "people",
		"emoji_order": "716",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f483": {
		"code_points": {
			"base": "1f483",
			"non_fully_qualified": "1f483",
			"decimal": "&#128131;"
		},
		"name": "dancer",
		"shortname": ":dancer:",
		"category": "people",
		"emoji_order": "729",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "sexy", "diversity", "girls night", "dance"]
	},
	"1f483-1f3fb": {
		"code_points": {
			"base": "1f483-1f3fb",
			"non_fully_qualified": "1f483-1f3fb",
			"decimal": "&#128131;&#127995;"
		},
		"name": "dancer tone 1",
		"shortname": ":dancer_tone1:",
		"category": "people",
		"emoji_order": "730",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f483-1f3fc": {
		"code_points": {
			"base": "1f483-1f3fc",
			"non_fully_qualified": "1f483-1f3fc",
			"decimal": "&#128131;&#127996;"
		},
		"name": "dancer tone 2",
		"shortname": ":dancer_tone2:",
		"category": "people",
		"emoji_order": "731",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f483-1f3fd": {
		"code_points": {
			"base": "1f483-1f3fd",
			"non_fully_qualified": "1f483-1f3fd",
			"decimal": "&#128131;&#127997;"
		},
		"name": "dancer tone 3",
		"shortname": ":dancer_tone3:",
		"category": "people",
		"emoji_order": "732",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f483-1f3fe": {
		"code_points": {
			"base": "1f483-1f3fe",
			"non_fully_qualified": "1f483-1f3fe",
			"decimal": "&#128131;&#127998;"
		},
		"name": "dancer tone 4",
		"shortname": ":dancer_tone4:",
		"category": "people",
		"emoji_order": "733",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f483-1f3ff": {
		"code_points": {
			"base": "1f483-1f3ff",
			"non_fully_qualified": "1f483-1f3ff",
			"decimal": "&#128131;&#127999;"
		},
		"name": "dancer tone 5",
		"shortname": ":dancer_tone5:",
		"category": "people",
		"emoji_order": "734",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f57a": {
		"code_points": {
			"base": "1f57a",
			"non_fully_qualified": "1f57a",
			"decimal": "&#128378;"
		},
		"name": "man dancing",
		"shortname": ":man_dancing:",
		"category": "people",
		"emoji_order": "735",
		"shortname_alternates": [":male_dancer:"],
		"ascii": [],
		"keywords": []
	},
	"1f57a-1f3fb": {
		"code_points": {
			"base": "1f57a-1f3fb",
			"non_fully_qualified": "1f57a-1f3fb",
			"decimal": "&#128378;&#127995;"
		},
		"name": "man dancing tone 1",
		"shortname": ":man_dancing_tone1:",
		"category": "people",
		"emoji_order": "736",
		"shortname_alternates": [":male_dancer_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f57a-1f3fc": {
		"code_points": {
			"base": "1f57a-1f3fc",
			"non_fully_qualified": "1f57a-1f3fc",
			"decimal": "&#128378;&#127996;"
		},
		"name": "man dancing tone 2",
		"shortname": ":man_dancing_tone2:",
		"category": "people",
		"emoji_order": "737",
		"shortname_alternates": [":male_dancer_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f57a-1f3fd": {
		"code_points": {
			"base": "1f57a-1f3fd",
			"non_fully_qualified": "1f57a-1f3fd",
			"decimal": "&#128378;&#127997;"
		},
		"name": "man dancing tone 3",
		"shortname": ":man_dancing_tone3:",
		"category": "people",
		"emoji_order": "738",
		"shortname_alternates": [":male_dancer_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f57a-1f3fe": {
		"code_points": {
			"base": "1f57a-1f3fe",
			"non_fully_qualified": "1f57a-1f3fe",
			"decimal": "&#128378;&#127998;"
		},
		"name": "man dancing tone 4",
		"shortname": ":man_dancing_tone4:",
		"category": "people",
		"emoji_order": "739",
		"shortname_alternates": [":male_dancer_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f57a-1f3ff": {
		"code_points": {
			"base": "1f57a-1f3ff",
			"non_fully_qualified": "1f57a-1f3ff",
			"decimal": "&#128378;&#127999;"
		},
		"name": "man dancing tone 5",
		"shortname": ":man_dancing_tone5:",
		"category": "people",
		"emoji_order": "740",
		"shortname_alternates": [":male_dancer_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f46f": {
		"code_points": {
			"base": "1f46f",
			"non_fully_qualified": "1f46f",
			"decimal": "&#128111;"
		},
		"name": "woman with bunny ears",
		"shortname": ":dancers:",
		"category": "people",
		"emoji_order": "741",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "sexy", "girls night", "boys night", "parties", "dance"]
	},
	"1f574": {
		"code_points": {
			"base": "1f574",
			"non_fully_qualified": "1f574",
			"fully_qualified": "1f574-fe0f",
			"decimal": "&#128372;"
		},
		"name": "man in business suit levitating",
		"shortname": ":levitate:",
		"category": "activity",
		"emoji_order": "759",
		"shortname_alternates": [":man_in_business_suit_levitating:"],
		"ascii": [],
		"keywords": ["men", "job"]
	},
	"1f5e3": {
		"code_points": {
			"base": "1f5e3",
			"non_fully_qualified": "1f5e3",
			"fully_qualified": "1f5e3-fe0f",
			"decimal": "&#128483;"
		},
		"name": "speaking head in silhouette",
		"shortname": ":speaking_head:",
		"category": "people",
		"emoji_order": "765",
		"shortname_alternates": [":speaking_head_in_silhouette:"],
		"ascii": [],
		"keywords": ["people", "talk"]
	},
	"1f464": {
		"code_points": {
			"base": "1f464",
			"non_fully_qualified": "1f464",
			"decimal": "&#128100;"
		},
		"name": "bust in silhouette",
		"shortname": ":bust_in_silhouette:",
		"category": "people",
		"emoji_order": "766",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people"]
	},
	"1f465": {
		"code_points": {
			"base": "1f465",
			"non_fully_qualified": "1f465",
			"decimal": "&#128101;"
		},
		"name": "busts in silhouette",
		"shortname": ":busts_in_silhouette:",
		"category": "people",
		"emoji_order": "767",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people"]
	},
	"1f93a": {
		"code_points": {
			"base": "1f93a",
			"non_fully_qualified": "1f93a",
			"decimal": "&#129338;"
		},
		"name": "fencer",
		"shortname": ":fencer:",
		"category": "activity",
		"emoji_order": "768",
		"shortname_alternates": [":fencing:"],
		"ascii": [],
		"keywords": []
	},
	"1f3c7": {
		"code_points": {
			"base": "1f3c7",
			"non_fully_qualified": "1f3c7",
			"decimal": "&#127943;"
		},
		"name": "horse racing",
		"shortname": ":horse_racing:",
		"category": "activity",
		"emoji_order": "769",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["men", "sport", "horse racing"]
	},
	"1f3c7-1f3fb": {
		"code_points": {
			"base": "1f3c7-1f3fb",
			"non_fully_qualified": "1f3c7-1f3fb",
			"decimal": "&#127943;&#127995;"
		},
		"name": "horse racing tone 1",
		"shortname": ":horse_racing_tone1:",
		"category": "activity",
		"emoji_order": "770",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c7-1f3fc": {
		"code_points": {
			"base": "1f3c7-1f3fc",
			"non_fully_qualified": "1f3c7-1f3fc",
			"decimal": "&#127943;&#127996;"
		},
		"name": "horse racing tone 2",
		"shortname": ":horse_racing_tone2:",
		"category": "activity",
		"emoji_order": "771",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c7-1f3fd": {
		"code_points": {
			"base": "1f3c7-1f3fd",
			"non_fully_qualified": "1f3c7-1f3fd",
			"decimal": "&#127943;&#127997;"
		},
		"name": "horse racing tone 3",
		"shortname": ":horse_racing_tone3:",
		"category": "activity",
		"emoji_order": "772",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c7-1f3fe": {
		"code_points": {
			"base": "1f3c7-1f3fe",
			"non_fully_qualified": "1f3c7-1f3fe",
			"decimal": "&#127943;&#127998;"
		},
		"name": "horse racing tone 4",
		"shortname": ":horse_racing_tone4:",
		"category": "activity",
		"emoji_order": "773",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c7-1f3ff": {
		"code_points": {
			"base": "1f3c7-1f3ff",
			"non_fully_qualified": "1f3c7-1f3ff",
			"decimal": "&#127943;&#127999;"
		},
		"name": "horse racing tone 5",
		"shortname": ":horse_racing_tone5:",
		"category": "activity",
		"emoji_order": "774",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26f7": {
		"code_points": {
			"base": "26f7",
			"non_fully_qualified": "26f7",
			"fully_qualified": "26f7-fe0f",
			"decimal": "&#9975;"
		},
		"name": "skier",
		"shortname": ":skier:",
		"category": "activity",
		"emoji_order": "775",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["hat", "vacation", "cold", "sport", "skiing"]
	},
	"1f3c2": {
		"code_points": {
			"base": "1f3c2",
			"non_fully_qualified": "1f3c2",
			"decimal": "&#127938;"
		},
		"name": "snowboarder",
		"shortname": ":snowboarder:",
		"category": "activity",
		"emoji_order": "776",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["hat", "vacation", "cold", "sport", "snowboarding"]
	},
	"1f3cc": {
		"code_points": {
			"base": "1f3cc",
			"non_fully_qualified": "1f3cc",
			"fully_qualified": "1f3cc-fe0f",
			"decimal": "&#127948;"
		},
		"name": "golfer",
		"shortname": ":golfer:",
		"category": "activity",
		"emoji_order": "782",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["men", "game", "ball", "vacation", "sport", "golf"]
	},
	"1f3c4": {
		"code_points": {
			"base": "1f3c4",
			"non_fully_qualified": "1f3c4",
			"decimal": "&#127940;"
		},
		"name": "surfer",
		"shortname": ":surfer:",
		"category": "activity",
		"emoji_order": "800",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["men", "vacation", "tropical", "sport", "diversity"]
	},
	"1f3c4-1f3fb": {
		"code_points": {
			"base": "1f3c4-1f3fb",
			"non_fully_qualified": "1f3c4-1f3fb",
			"decimal": "&#127940;&#127995;"
		},
		"name": "surfer tone 1",
		"shortname": ":surfer_tone1:",
		"category": "activity",
		"emoji_order": "801",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c4-1f3fc": {
		"code_points": {
			"base": "1f3c4-1f3fc",
			"non_fully_qualified": "1f3c4-1f3fc",
			"decimal": "&#127940;&#127996;"
		},
		"name": "surfer tone 2",
		"shortname": ":surfer_tone2:",
		"category": "activity",
		"emoji_order": "802",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c4-1f3fd": {
		"code_points": {
			"base": "1f3c4-1f3fd",
			"non_fully_qualified": "1f3c4-1f3fd",
			"decimal": "&#127940;&#127997;"
		},
		"name": "surfer tone 3",
		"shortname": ":surfer_tone3:",
		"category": "activity",
		"emoji_order": "803",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c4-1f3fe": {
		"code_points": {
			"base": "1f3c4-1f3fe",
			"non_fully_qualified": "1f3c4-1f3fe",
			"decimal": "&#127940;&#127998;"
		},
		"name": "surfer tone 4",
		"shortname": ":surfer_tone4:",
		"category": "activity",
		"emoji_order": "804",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3c4-1f3ff": {
		"code_points": {
			"base": "1f3c4-1f3ff",
			"non_fully_qualified": "1f3c4-1f3ff",
			"decimal": "&#127940;&#127999;"
		},
		"name": "surfer tone 5",
		"shortname": ":surfer_tone5:",
		"category": "activity",
		"emoji_order": "805",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6a3": {
		"code_points": {
			"base": "1f6a3",
			"non_fully_qualified": "1f6a3",
			"decimal": "&#128675;"
		},
		"name": "rowboat",
		"shortname": ":rowboat:",
		"category": "activity",
		"emoji_order": "818",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["men", "workout", "sport", "rowing", "diversity"]
	},
	"1f6a3-1f3fb": {
		"code_points": {
			"base": "1f6a3-1f3fb",
			"non_fully_qualified": "1f6a3-1f3fb",
			"decimal": "&#128675;&#127995;"
		},
		"name": "rowboat tone 1",
		"shortname": ":rowboat_tone1:",
		"category": "activity",
		"emoji_order": "819",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6a3-1f3fc": {
		"code_points": {
			"base": "1f6a3-1f3fc",
			"non_fully_qualified": "1f6a3-1f3fc",
			"decimal": "&#128675;&#127996;"
		},
		"name": "rowboat tone 2",
		"shortname": ":rowboat_tone2:",
		"category": "activity",
		"emoji_order": "820",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6a3-1f3fd": {
		"code_points": {
			"base": "1f6a3-1f3fd",
			"non_fully_qualified": "1f6a3-1f3fd",
			"decimal": "&#128675;&#127997;"
		},
		"name": "rowboat tone 3",
		"shortname": ":rowboat_tone3:",
		"category": "activity",
		"emoji_order": "821",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6a3-1f3fe": {
		"code_points": {
			"base": "1f6a3-1f3fe",
			"non_fully_qualified": "1f6a3-1f3fe",
			"decimal": "&#128675;&#127998;"
		},
		"name": "rowboat tone 4",
		"shortname": ":rowboat_tone4:",
		"category": "activity",
		"emoji_order": "822",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6a3-1f3ff": {
		"code_points": {
			"base": "1f6a3-1f3ff",
			"non_fully_qualified": "1f6a3-1f3ff",
			"decimal": "&#128675;&#127999;"
		},
		"name": "rowboat tone 5",
		"shortname": ":rowboat_tone5:",
		"category": "activity",
		"emoji_order": "823",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3ca": {
		"code_points": {
			"base": "1f3ca",
			"non_fully_qualified": "1f3ca",
			"decimal": "&#127946;"
		},
		"name": "swimmer",
		"shortname": ":swimmer:",
		"category": "activity",
		"emoji_order": "836",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["workout", "sport", "swim", "diversity"]
	},
	"1f3ca-1f3fb": {
		"code_points": {
			"base": "1f3ca-1f3fb",
			"non_fully_qualified": "1f3ca-1f3fb",
			"decimal": "&#127946;&#127995;"
		},
		"name": "swimmer tone 1",
		"shortname": ":swimmer_tone1:",
		"category": "activity",
		"emoji_order": "837",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3ca-1f3fc": {
		"code_points": {
			"base": "1f3ca-1f3fc",
			"non_fully_qualified": "1f3ca-1f3fc",
			"decimal": "&#127946;&#127996;"
		},
		"name": "swimmer tone 2",
		"shortname": ":swimmer_tone2:",
		"category": "activity",
		"emoji_order": "838",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3ca-1f3fd": {
		"code_points": {
			"base": "1f3ca-1f3fd",
			"non_fully_qualified": "1f3ca-1f3fd",
			"decimal": "&#127946;&#127997;"
		},
		"name": "swimmer tone 3",
		"shortname": ":swimmer_tone3:",
		"category": "activity",
		"emoji_order": "839",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3ca-1f3fe": {
		"code_points": {
			"base": "1f3ca-1f3fe",
			"non_fully_qualified": "1f3ca-1f3fe",
			"decimal": "&#127946;&#127998;"
		},
		"name": "swimmer tone 4",
		"shortname": ":swimmer_tone4:",
		"category": "activity",
		"emoji_order": "840",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3ca-1f3ff": {
		"code_points": {
			"base": "1f3ca-1f3ff",
			"non_fully_qualified": "1f3ca-1f3ff",
			"decimal": "&#127946;&#127999;"
		},
		"name": "swimmer tone 5",
		"shortname": ":swimmer_tone5:",
		"category": "activity",
		"emoji_order": "841",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26f9": {
		"code_points": {
			"base": "26f9",
			"non_fully_qualified": "26f9",
			"fully_qualified": "26f9-fe0f",
			"decimal": "&#9977;"
		},
		"name": "person with ball",
		"shortname": ":basketball_player:",
		"category": "activity",
		"emoji_order": "854",
		"shortname_alternates": [":person_with_ball:"],
		"ascii": [],
		"keywords": ["men", "game", "ball", "sport", "basketball", "diversity"]
	},
	"26f9-1f3fb": {
		"code_points": {
			"base": "26f9-1f3fb",
			"non_fully_qualified": "26f9-1f3fb",
			"decimal": "&#9977;&#127995;"
		},
		"name": "person with ball tone 1",
		"shortname": ":basketball_player_tone1:",
		"category": "activity",
		"emoji_order": "855",
		"shortname_alternates": [":person_with_ball_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"26f9-1f3fc": {
		"code_points": {
			"base": "26f9-1f3fc",
			"non_fully_qualified": "26f9-1f3fc",
			"decimal": "&#9977;&#127996;"
		},
		"name": "person with ball tone 2",
		"shortname": ":basketball_player_tone2:",
		"category": "activity",
		"emoji_order": "856",
		"shortname_alternates": [":person_with_ball_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"26f9-1f3fd": {
		"code_points": {
			"base": "26f9-1f3fd",
			"non_fully_qualified": "26f9-1f3fd",
			"decimal": "&#9977;&#127997;"
		},
		"name": "person with ball tone 3",
		"shortname": ":basketball_player_tone3:",
		"category": "activity",
		"emoji_order": "857",
		"shortname_alternates": [":person_with_ball_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"26f9-1f3fe": {
		"code_points": {
			"base": "26f9-1f3fe",
			"non_fully_qualified": "26f9-1f3fe",
			"decimal": "&#9977;&#127998;"
		},
		"name": "person with ball tone 4",
		"shortname": ":basketball_player_tone4:",
		"category": "activity",
		"emoji_order": "858",
		"shortname_alternates": [":person_with_ball_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"26f9-1f3ff": {
		"code_points": {
			"base": "26f9-1f3ff",
			"non_fully_qualified": "26f9-1f3ff",
			"decimal": "&#9977;&#127999;"
		},
		"name": "person with ball tone 5",
		"shortname": ":basketball_player_tone5:",
		"category": "activity",
		"emoji_order": "859",
		"shortname_alternates": [":person_with_ball_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f3cb": {
		"code_points": {
			"base": "1f3cb",
			"non_fully_qualified": "1f3cb",
			"fully_qualified": "1f3cb-fe0f",
			"decimal": "&#127947;"
		},
		"name": "weight lifter",
		"shortname": ":lifter:",
		"category": "activity",
		"emoji_order": "872",
		"shortname_alternates": [":weight_lifter:"],
		"ascii": [],
		"keywords": ["men", "workout", "flex", "sport", "weight lifting", "win", "diversity"]
	},
	"1f3cb-1f3fb": {
		"code_points": {
			"base": "1f3cb-1f3fb",
			"non_fully_qualified": "1f3cb-1f3fb",
			"decimal": "&#127947;&#127995;"
		},
		"name": "weight lifter tone 1",
		"shortname": ":lifter_tone1:",
		"category": "activity",
		"emoji_order": "873",
		"shortname_alternates": [":weight_lifter_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f3cb-1f3fc": {
		"code_points": {
			"base": "1f3cb-1f3fc",
			"non_fully_qualified": "1f3cb-1f3fc",
			"decimal": "&#127947;&#127996;"
		},
		"name": "weight lifter tone 2",
		"shortname": ":lifter_tone2:",
		"category": "activity",
		"emoji_order": "874",
		"shortname_alternates": [":weight_lifter_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f3cb-1f3fd": {
		"code_points": {
			"base": "1f3cb-1f3fd",
			"non_fully_qualified": "1f3cb-1f3fd",
			"decimal": "&#127947;&#127997;"
		},
		"name": "weight lifter tone 3",
		"shortname": ":lifter_tone3:",
		"category": "activity",
		"emoji_order": "875",
		"shortname_alternates": [":weight_lifter_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f3cb-1f3fe": {
		"code_points": {
			"base": "1f3cb-1f3fe",
			"non_fully_qualified": "1f3cb-1f3fe",
			"decimal": "&#127947;&#127998;"
		},
		"name": "weight lifter tone 4",
		"shortname": ":lifter_tone4:",
		"category": "activity",
		"emoji_order": "876",
		"shortname_alternates": [":weight_lifter_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f3cb-1f3ff": {
		"code_points": {
			"base": "1f3cb-1f3ff",
			"non_fully_qualified": "1f3cb-1f3ff",
			"decimal": "&#127947;&#127999;"
		},
		"name": "weight lifter tone 5",
		"shortname": ":lifter_tone5:",
		"category": "activity",
		"emoji_order": "877",
		"shortname_alternates": [":weight_lifter_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f6b4": {
		"code_points": {
			"base": "1f6b4",
			"non_fully_qualified": "1f6b4",
			"decimal": "&#128692;"
		},
		"name": "bicyclist",
		"shortname": ":bicyclist:",
		"category": "activity",
		"emoji_order": "890",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["men", "workout", "sport", "bike", "diversity"]
	},
	"1f6b4-1f3fb": {
		"code_points": {
			"base": "1f6b4-1f3fb",
			"non_fully_qualified": "1f6b4-1f3fb",
			"decimal": "&#128692;&#127995;"
		},
		"name": "bicyclist tone 1",
		"shortname": ":bicyclist_tone1:",
		"category": "activity",
		"emoji_order": "891",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b4-1f3fc": {
		"code_points": {
			"base": "1f6b4-1f3fc",
			"non_fully_qualified": "1f6b4-1f3fc",
			"decimal": "&#128692;&#127996;"
		},
		"name": "bicyclist tone 2",
		"shortname": ":bicyclist_tone2:",
		"category": "activity",
		"emoji_order": "892",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b4-1f3fd": {
		"code_points": {
			"base": "1f6b4-1f3fd",
			"non_fully_qualified": "1f6b4-1f3fd",
			"decimal": "&#128692;&#127997;"
		},
		"name": "bicyclist tone 3",
		"shortname": ":bicyclist_tone3:",
		"category": "activity",
		"emoji_order": "893",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b4-1f3fe": {
		"code_points": {
			"base": "1f6b4-1f3fe",
			"non_fully_qualified": "1f6b4-1f3fe",
			"decimal": "&#128692;&#127998;"
		},
		"name": "bicyclist tone 4",
		"shortname": ":bicyclist_tone4:",
		"category": "activity",
		"emoji_order": "894",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b4-1f3ff": {
		"code_points": {
			"base": "1f6b4-1f3ff",
			"non_fully_qualified": "1f6b4-1f3ff",
			"decimal": "&#128692;&#127999;"
		},
		"name": "bicyclist tone 5",
		"shortname": ":bicyclist_tone5:",
		"category": "activity",
		"emoji_order": "895",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b5": {
		"code_points": {
			"base": "1f6b5",
			"non_fully_qualified": "1f6b5",
			"decimal": "&#128693;"
		},
		"name": "mountain bicyclist",
		"shortname": ":mountain_bicyclist:",
		"category": "activity",
		"emoji_order": "908",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["men", "sport", "bike", "diversity"]
	},
	"1f6b5-1f3fb": {
		"code_points": {
			"base": "1f6b5-1f3fb",
			"non_fully_qualified": "1f6b5-1f3fb",
			"decimal": "&#128693;&#127995;"
		},
		"name": "mountain bicyclist tone 1",
		"shortname": ":mountain_bicyclist_tone1:",
		"category": "activity",
		"emoji_order": "909",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b5-1f3fc": {
		"code_points": {
			"base": "1f6b5-1f3fc",
			"non_fully_qualified": "1f6b5-1f3fc",
			"decimal": "&#128693;&#127996;"
		},
		"name": "mountain bicyclist tone 2",
		"shortname": ":mountain_bicyclist_tone2:",
		"category": "activity",
		"emoji_order": "910",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b5-1f3fd": {
		"code_points": {
			"base": "1f6b5-1f3fd",
			"non_fully_qualified": "1f6b5-1f3fd",
			"decimal": "&#128693;&#127997;"
		},
		"name": "mountain bicyclist tone 3",
		"shortname": ":mountain_bicyclist_tone3:",
		"category": "activity",
		"emoji_order": "911",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b5-1f3fe": {
		"code_points": {
			"base": "1f6b5-1f3fe",
			"non_fully_qualified": "1f6b5-1f3fe",
			"decimal": "&#128693;&#127998;"
		},
		"name": "mountain bicyclist tone 4",
		"shortname": ":mountain_bicyclist_tone4:",
		"category": "activity",
		"emoji_order": "912",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6b5-1f3ff": {
		"code_points": {
			"base": "1f6b5-1f3ff",
			"non_fully_qualified": "1f6b5-1f3ff",
			"decimal": "&#128693;&#127999;"
		},
		"name": "mountain bicyclist tone 5",
		"shortname": ":mountain_bicyclist_tone5:",
		"category": "activity",
		"emoji_order": "913",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3ce": {
		"code_points": {
			"base": "1f3ce",
			"non_fully_qualified": "1f3ce",
			"fully_qualified": "1f3ce-fe0f",
			"decimal": "&#127950;"
		},
		"name": "racing car",
		"shortname": ":race_car:",
		"category": "travel",
		"emoji_order": "926",
		"shortname_alternates": [":racing_car:"],
		"ascii": [],
		"keywords": ["transportation", "car"]
	},
	"1f3cd": {
		"code_points": {
			"base": "1f3cd",
			"non_fully_qualified": "1f3cd",
			"fully_qualified": "1f3cd-fe0f",
			"decimal": "&#127949;"
		},
		"name": "racing motorcycle",
		"shortname": ":motorcycle:",
		"category": "travel",
		"emoji_order": "927",
		"shortname_alternates": [":racing_motorcycle:"],
		"ascii": [],
		"keywords": ["transportation", "travel", "bike"]
	},
	"1f938": {
		"code_points": {
			"base": "1f938",
			"non_fully_qualified": "1f938",
			"decimal": "&#129336;"
		},
		"name": "person doing cartwheel",
		"shortname": ":cartwheel:",
		"category": "activity",
		"emoji_order": "928",
		"shortname_alternates": [":person_doing_cartwheel:"],
		"ascii": [],
		"keywords": []
	},
	"1f938-1f3fb": {
		"code_points": {
			"base": "1f938-1f3fb",
			"non_fully_qualified": "1f938-1f3fb",
			"decimal": "&#129336;&#127995;"
		},
		"name": "person doing cartwheel tone 1",
		"shortname": ":cartwheel_tone1:",
		"category": "activity",
		"emoji_order": "929",
		"shortname_alternates": [":person_doing_cartwheel_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f938-1f3fc": {
		"code_points": {
			"base": "1f938-1f3fc",
			"non_fully_qualified": "1f938-1f3fc",
			"decimal": "&#129336;&#127996;"
		},
		"name": "person doing cartwheel tone 2",
		"shortname": ":cartwheel_tone2:",
		"category": "activity",
		"emoji_order": "930",
		"shortname_alternates": [":person_doing_cartwheel_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f938-1f3fd": {
		"code_points": {
			"base": "1f938-1f3fd",
			"non_fully_qualified": "1f938-1f3fd",
			"decimal": "&#129336;&#127997;"
		},
		"name": "person doing cartwheel tone 3",
		"shortname": ":cartwheel_tone3:",
		"category": "activity",
		"emoji_order": "931",
		"shortname_alternates": [":person_doing_cartwheel_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f938-1f3fe": {
		"code_points": {
			"base": "1f938-1f3fe",
			"non_fully_qualified": "1f938-1f3fe",
			"decimal": "&#129336;&#127998;"
		},
		"name": "person doing cartwheel tone 4",
		"shortname": ":cartwheel_tone4:",
		"category": "activity",
		"emoji_order": "932",
		"shortname_alternates": [":person_doing_cartwheel_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f938-1f3ff": {
		"code_points": {
			"base": "1f938-1f3ff",
			"non_fully_qualified": "1f938-1f3ff",
			"decimal": "&#129336;&#127999;"
		},
		"name": "person doing cartwheel tone 5",
		"shortname": ":cartwheel_tone5:",
		"category": "activity",
		"emoji_order": "933",
		"shortname_alternates": [":person_doing_cartwheel_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f93c": {
		"code_points": {
			"base": "1f93c",
			"non_fully_qualified": "1f93c",
			"decimal": "&#129340;"
		},
		"name": "wrestlers",
		"shortname": ":wrestlers:",
		"category": "activity",
		"emoji_order": "946",
		"shortname_alternates": [":wrestling:"],
		"ascii": [],
		"keywords": []
	},
	"1f93c-1f3fb": {
		"code_points": {
			"base": "1f93c-1f3fb",
			"non_fully_qualified": "1f93c-1f3fb",
			"decimal": "&#129340;&#127995;"
		},
		"name": "wrestlers tone 1",
		"shortname": ":wrestlers_tone1:",
		"category": "activity",
		"emoji_order": "947",
		"shortname_alternates": [":wrestling_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f93c-1f3fc": {
		"code_points": {
			"base": "1f93c-1f3fc",
			"non_fully_qualified": "1f93c-1f3fc",
			"decimal": "&#129340;&#127996;"
		},
		"name": "wrestlers tone 2",
		"shortname": ":wrestlers_tone2:",
		"category": "activity",
		"emoji_order": "948",
		"shortname_alternates": [":wrestling_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f93c-1f3fd": {
		"code_points": {
			"base": "1f93c-1f3fd",
			"non_fully_qualified": "1f93c-1f3fd",
			"decimal": "&#129340;&#127997;"
		},
		"name": "wrestlers tone 3",
		"shortname": ":wrestlers_tone3:",
		"category": "activity",
		"emoji_order": "949",
		"shortname_alternates": [":wrestling_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f93c-1f3fe": {
		"code_points": {
			"base": "1f93c-1f3fe",
			"non_fully_qualified": "1f93c-1f3fe",
			"decimal": "&#129340;&#127998;"
		},
		"name": "wrestlers tone 4",
		"shortname": ":wrestlers_tone4:",
		"category": "activity",
		"emoji_order": "950",
		"shortname_alternates": [":wrestling_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f93c-1f3ff": {
		"code_points": {
			"base": "1f93c-1f3ff",
			"non_fully_qualified": "1f93c-1f3ff",
			"decimal": "&#129340;&#127999;"
		},
		"name": "wrestlers tone 5",
		"shortname": ":wrestlers_tone5:",
		"category": "activity",
		"emoji_order": "951",
		"shortname_alternates": [":wrestling_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f93d": {
		"code_points": {
			"base": "1f93d",
			"non_fully_qualified": "1f93d",
			"decimal": "&#129341;"
		},
		"name": "water polo",
		"shortname": ":water_polo:",
		"category": "activity",
		"emoji_order": "964",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93d-1f3fb": {
		"code_points": {
			"base": "1f93d-1f3fb",
			"non_fully_qualified": "1f93d-1f3fb",
			"decimal": "&#129341;&#127995;"
		},
		"name": "water polo tone 1",
		"shortname": ":water_polo_tone1:",
		"category": "activity",
		"emoji_order": "965",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93d-1f3fc": {
		"code_points": {
			"base": "1f93d-1f3fc",
			"non_fully_qualified": "1f93d-1f3fc",
			"decimal": "&#129341;&#127996;"
		},
		"name": "water polo tone 2",
		"shortname": ":water_polo_tone2:",
		"category": "activity",
		"emoji_order": "966",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93d-1f3fd": {
		"code_points": {
			"base": "1f93d-1f3fd",
			"non_fully_qualified": "1f93d-1f3fd",
			"decimal": "&#129341;&#127997;"
		},
		"name": "water polo tone 3",
		"shortname": ":water_polo_tone3:",
		"category": "activity",
		"emoji_order": "967",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93d-1f3fe": {
		"code_points": {
			"base": "1f93d-1f3fe",
			"non_fully_qualified": "1f93d-1f3fe",
			"decimal": "&#129341;&#127998;"
		},
		"name": "water polo tone 4",
		"shortname": ":water_polo_tone4:",
		"category": "activity",
		"emoji_order": "968",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93d-1f3ff": {
		"code_points": {
			"base": "1f93d-1f3ff",
			"non_fully_qualified": "1f93d-1f3ff",
			"decimal": "&#129341;&#127999;"
		},
		"name": "water polo tone 5",
		"shortname": ":water_polo_tone5:",
		"category": "activity",
		"emoji_order": "969",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93e": {
		"code_points": {
			"base": "1f93e",
			"non_fully_qualified": "1f93e",
			"decimal": "&#129342;"
		},
		"name": "handball",
		"shortname": ":handball:",
		"category": "activity",
		"emoji_order": "982",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93e-1f3fb": {
		"code_points": {
			"base": "1f93e-1f3fb",
			"non_fully_qualified": "1f93e-1f3fb",
			"decimal": "&#129342;&#127995;"
		},
		"name": "handball tone 1",
		"shortname": ":handball_tone1:",
		"category": "activity",
		"emoji_order": "983",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93e-1f3fc": {
		"code_points": {
			"base": "1f93e-1f3fc",
			"non_fully_qualified": "1f93e-1f3fc",
			"decimal": "&#129342;&#127996;"
		},
		"name": "handball tone 2",
		"shortname": ":handball_tone2:",
		"category": "activity",
		"emoji_order": "984",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93e-1f3fd": {
		"code_points": {
			"base": "1f93e-1f3fd",
			"non_fully_qualified": "1f93e-1f3fd",
			"decimal": "&#129342;&#127997;"
		},
		"name": "handball tone 3",
		"shortname": ":handball_tone3:",
		"category": "activity",
		"emoji_order": "985",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93e-1f3fe": {
		"code_points": {
			"base": "1f93e-1f3fe",
			"non_fully_qualified": "1f93e-1f3fe",
			"decimal": "&#129342;&#127998;"
		},
		"name": "handball tone 4",
		"shortname": ":handball_tone4:",
		"category": "activity",
		"emoji_order": "986",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93e-1f3ff": {
		"code_points": {
			"base": "1f93e-1f3ff",
			"non_fully_qualified": "1f93e-1f3ff",
			"decimal": "&#129342;&#127999;"
		},
		"name": "handball tone 5",
		"shortname": ":handball_tone5:",
		"category": "activity",
		"emoji_order": "987",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f939": {
		"code_points": {
			"base": "1f939",
			"non_fully_qualified": "1f939",
			"decimal": "&#129337;"
		},
		"name": "juggling",
		"shortname": ":juggling:",
		"category": "activity",
		"emoji_order": "1000",
		"shortname_alternates": [":juggler:"],
		"ascii": [],
		"keywords": []
	},
	"1f939-1f3fb": {
		"code_points": {
			"base": "1f939-1f3fb",
			"non_fully_qualified": "1f939-1f3fb",
			"decimal": "&#129337;&#127995;"
		},
		"name": "juggling tone 1",
		"shortname": ":juggling_tone1:",
		"category": "activity",
		"emoji_order": "1001",
		"shortname_alternates": [":juggler_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f939-1f3fc": {
		"code_points": {
			"base": "1f939-1f3fc",
			"non_fully_qualified": "1f939-1f3fc",
			"decimal": "&#129337;&#127996;"
		},
		"name": "juggling tone 2",
		"shortname": ":juggling_tone2:",
		"category": "activity",
		"emoji_order": "1002",
		"shortname_alternates": [":juggler_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f939-1f3fd": {
		"code_points": {
			"base": "1f939-1f3fd",
			"non_fully_qualified": "1f939-1f3fd",
			"decimal": "&#129337;&#127997;"
		},
		"name": "juggling tone 3",
		"shortname": ":juggling_tone3:",
		"category": "activity",
		"emoji_order": "1003",
		"shortname_alternates": [":juggler_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f939-1f3fe": {
		"code_points": {
			"base": "1f939-1f3fe",
			"non_fully_qualified": "1f939-1f3fe",
			"decimal": "&#129337;&#127998;"
		},
		"name": "juggling tone 4",
		"shortname": ":juggling_tone4:",
		"category": "activity",
		"emoji_order": "1004",
		"shortname_alternates": [":juggler_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f939-1f3ff": {
		"code_points": {
			"base": "1f939-1f3ff",
			"non_fully_qualified": "1f939-1f3ff",
			"decimal": "&#129337;&#127999;"
		},
		"name": "juggling tone 5",
		"shortname": ":juggling_tone5:",
		"category": "activity",
		"emoji_order": "1005",
		"shortname_alternates": [":juggler_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f46b": {
		"code_points": {
			"base": "1f46b",
			"non_fully_qualified": "1f46b",
			"decimal": "&#128107;"
		},
		"name": "man and woman holding hands",
		"shortname": ":couple:",
		"category": "people",
		"emoji_order": "1018",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "sex", "creationism"]
	},
	"1f46c": {
		"code_points": {
			"base": "1f46c",
			"non_fully_qualified": "1f46c",
			"decimal": "&#128108;"
		},
		"name": "two men holding hands",
		"shortname": ":two_men_holding_hands:",
		"category": "people",
		"emoji_order": "1024",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "gay", "men", "sex", "lgbt"]
	},
	"1f46d": {
		"code_points": {
			"base": "1f46d",
			"non_fully_qualified": "1f46d",
			"decimal": "&#128109;"
		},
		"name": "two women holding hands",
		"shortname": ":two_women_holding_hands:",
		"category": "people",
		"emoji_order": "1030",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "women", "sex", "lgbt", "lesbian", "girls night"]
	},
	"1f48f": {
		"code_points": {
			"base": "1f48f",
			"non_fully_qualified": "1f48f",
			"decimal": "&#128143;"
		},
		"name": "kiss",
		"shortname": ":couplekiss:",
		"category": "people",
		"emoji_order": "1036",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "love", "sex"]
	},
	"1f468-2764-1f48b-1f468": {
		"code_points": {
			"base": "1f468-2764-1f48b-1f468",
			"non_fully_qualified": "1f468-2764-1f48b-1f468",
			"fully_qualified": "1f468-200d-2764-fe0f-200d-1f48b-200d-1f468",
			"decimal": "&#128104;&#10084;&#128139;&#128104;"
		},
		"name": "kiss (man,man)",
		"shortname": ":kiss_mm:",
		"category": "people",
		"emoji_order": "1038",
		"shortname_alternates": [":couplekiss_mm:"],
		"ascii": [],
		"keywords": ["people", "gay", "men", "love", "sex", "lgbt"]
	},
	"1f469-2764-1f48b-1f469": {
		"code_points": {
			"base": "1f469-2764-1f48b-1f469",
			"non_fully_qualified": "1f469-2764-1f48b-1f469",
			"fully_qualified": "1f469-200d-2764-fe0f-200d-1f48b-200d-1f469",
			"decimal": "&#128105;&#10084;&#128139;&#128105;"
		},
		"name": "kiss (woman,woman)",
		"shortname": ":kiss_ww:",
		"category": "people",
		"emoji_order": "1039",
		"shortname_alternates": [":couplekiss_ww:"],
		"ascii": [],
		"keywords": ["people", "women", "love", "sex", "lgbt", "lesbian"]
	},
	"1f491": {
		"code_points": {
			"base": "1f491",
			"non_fully_qualified": "1f491",
			"decimal": "&#128145;"
		},
		"name": "couple with heart",
		"shortname": ":couple_with_heart:",
		"category": "people",
		"emoji_order": "1040",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "love", "sex"]
	},
	"1f468-2764-1f468": {
		"code_points": {
			"base": "1f468-2764-1f468",
			"non_fully_qualified": "1f468-2764-1f468",
			"fully_qualified": "1f468-200d-2764-fe0f-200d-1f468",
			"decimal": "&#128104;&#10084;&#128104;"
		},
		"name": "couple (man,man)",
		"shortname": ":couple_mm:",
		"category": "people",
		"emoji_order": "1042",
		"shortname_alternates": [":couple_with_heart_mm:"],
		"ascii": [],
		"keywords": ["people", "gay", "men", "love", "sex", "lgbt"]
	},
	"1f469-2764-1f469": {
		"code_points": {
			"base": "1f469-2764-1f469",
			"non_fully_qualified": "1f469-2764-1f469",
			"fully_qualified": "1f469-200d-2764-fe0f-200d-1f469",
			"decimal": "&#128105;&#10084;&#128105;"
		},
		"name": "couple (woman,woman)",
		"shortname": ":couple_ww:",
		"category": "people",
		"emoji_order": "1043",
		"shortname_alternates": [":couple_with_heart_ww:"],
		"ascii": [],
		"keywords": ["people", "women", "love", "sex", "lgbt"]
	},
	"1f46a": {
		"code_points": {
			"base": "1f46a",
			"non_fully_qualified": "1f46a",
			"decimal": "&#128106;"
		},
		"name": "family",
		"shortname": ":family:",
		"category": "people",
		"emoji_order": "1044",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "baby"]
	},
	"1f468-1f469-1f467": {
		"code_points": {
			"base": "1f468-1f469-1f467",
			"non_fully_qualified": "1f468-1f469-1f467",
			"fully_qualified": "1f468-200d-1f469-200d-1f467",
			"decimal": "&#128104;&#128105;&#128103;"
		},
		"name": "family (man,woman,girl)",
		"shortname": ":family_mwg:",
		"category": "people",
		"emoji_order": "1051",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "baby"]
	},
	"1f468-1f469-1f467-1f466": {
		"code_points": {
			"base": "1f468-1f469-1f467-1f466",
			"non_fully_qualified": "1f468-1f469-1f467-1f466",
			"fully_qualified": "1f468-200d-1f469-200d-1f467-200d-1f466",
			"decimal": "&#128104;&#128105;&#128103;&#128102;"
		},
		"name": "family (man,woman,girl,boy)",
		"shortname": ":family_mwgb:",
		"category": "people",
		"emoji_order": "1052",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "baby"]
	},
	"1f468-1f469-1f466-1f466": {
		"code_points": {
			"base": "1f468-1f469-1f466-1f466",
			"non_fully_qualified": "1f468-1f469-1f466-1f466",
			"fully_qualified": "1f468-200d-1f469-200d-1f466-200d-1f466",
			"decimal": "&#128104;&#128105;&#128102;&#128102;"
		},
		"name": "family (man,woman,boy,boy)",
		"shortname": ":family_mwbb:",
		"category": "people",
		"emoji_order": "1053",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "baby"]
	},
	"1f468-1f469-1f467-1f467": {
		"code_points": {
			"base": "1f468-1f469-1f467-1f467",
			"non_fully_qualified": "1f468-1f469-1f467-1f467",
			"fully_qualified": "1f468-200d-1f469-200d-1f467-200d-1f467",
			"decimal": "&#128104;&#128105;&#128103;&#128103;"
		},
		"name": "family (man,woman,girl,girl)",
		"shortname": ":family_mwgg:",
		"category": "people",
		"emoji_order": "1054",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "baby"]
	},
	"1f468-1f468-1f466": {
		"code_points": {
			"base": "1f468-1f468-1f466",
			"non_fully_qualified": "1f468-1f468-1f466",
			"fully_qualified": "1f468-200d-1f468-200d-1f466",
			"decimal": "&#128104;&#128104;&#128102;"
		},
		"name": "family (man,man,boy)",
		"shortname": ":family_mmb:",
		"category": "people",
		"emoji_order": "1055",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "gay", "family", "men", "baby", "lgbt"]
	},
	"1f468-1f468-1f467": {
		"code_points": {
			"base": "1f468-1f468-1f467",
			"non_fully_qualified": "1f468-1f468-1f467",
			"fully_qualified": "1f468-200d-1f468-200d-1f467",
			"decimal": "&#128104;&#128104;&#128103;"
		},
		"name": "family (man,man,girl)",
		"shortname": ":family_mmg:",
		"category": "people",
		"emoji_order": "1056",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "gay", "family", "men", "baby", "lgbt"]
	},
	"1f468-1f468-1f467-1f466": {
		"code_points": {
			"base": "1f468-1f468-1f467-1f466",
			"non_fully_qualified": "1f468-1f468-1f467-1f466",
			"fully_qualified": "1f468-200d-1f468-200d-1f467-200d-1f466",
			"decimal": "&#128104;&#128104;&#128103;&#128102;"
		},
		"name": "family (man,man,girl,boy)",
		"shortname": ":family_mmgb:",
		"category": "people",
		"emoji_order": "1057",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "gay", "family", "men", "baby", "lgbt"]
	},
	"1f468-1f468-1f466-1f466": {
		"code_points": {
			"base": "1f468-1f468-1f466-1f466",
			"non_fully_qualified": "1f468-1f468-1f466-1f466",
			"fully_qualified": "1f468-200d-1f468-200d-1f466-200d-1f466",
			"decimal": "&#128104;&#128104;&#128102;&#128102;"
		},
		"name": "family (man,man,boy,boy)",
		"shortname": ":family_mmbb:",
		"category": "people",
		"emoji_order": "1058",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "gay", "family", "men", "baby", "lgbt"]
	},
	"1f468-1f468-1f467-1f467": {
		"code_points": {
			"base": "1f468-1f468-1f467-1f467",
			"non_fully_qualified": "1f468-1f468-1f467-1f467",
			"fully_qualified": "1f468-200d-1f468-200d-1f467-200d-1f467",
			"decimal": "&#128104;&#128104;&#128103;&#128103;"
		},
		"name": "family (man,man,girl,girl)",
		"shortname": ":family_mmgg:",
		"category": "people",
		"emoji_order": "1059",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "gay", "family", "men", "baby", "lgbt"]
	},
	"1f469-1f469-1f466": {
		"code_points": {
			"base": "1f469-1f469-1f466",
			"non_fully_qualified": "1f469-1f469-1f466",
			"fully_qualified": "1f469-200d-1f469-200d-1f466",
			"decimal": "&#128105;&#128105;&#128102;"
		},
		"name": "family (woman,woman,boy)",
		"shortname": ":family_wwb:",
		"category": "people",
		"emoji_order": "1060",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "women", "baby", "lgbt", "lesbian"]
	},
	"1f469-1f469-1f467": {
		"code_points": {
			"base": "1f469-1f469-1f467",
			"non_fully_qualified": "1f469-1f469-1f467",
			"fully_qualified": "1f469-200d-1f469-200d-1f467",
			"decimal": "&#128105;&#128105;&#128103;"
		},
		"name": "family (woman,woman,girl)",
		"shortname": ":family_wwg:",
		"category": "people",
		"emoji_order": "1061",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "women", "baby", "lgbt", "lesbian"]
	},
	"1f469-1f469-1f467-1f466": {
		"code_points": {
			"base": "1f469-1f469-1f467-1f466",
			"non_fully_qualified": "1f469-1f469-1f467-1f466",
			"fully_qualified": "1f469-200d-1f469-200d-1f467-200d-1f466",
			"decimal": "&#128105;&#128105;&#128103;&#128102;"
		},
		"name": "family (woman,woman,girl,boy)",
		"shortname": ":family_wwgb:",
		"category": "people",
		"emoji_order": "1062",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "women", "baby", "lgbt", "lesbian"]
	},
	"1f469-1f469-1f466-1f466": {
		"code_points": {
			"base": "1f469-1f469-1f466-1f466",
			"non_fully_qualified": "1f469-1f469-1f466-1f466",
			"fully_qualified": "1f469-200d-1f469-200d-1f466-200d-1f466",
			"decimal": "&#128105;&#128105;&#128102;&#128102;"
		},
		"name": "family (woman,woman,boy,boy)",
		"shortname": ":family_wwbb:",
		"category": "people",
		"emoji_order": "1063",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "women", "baby", "lgbt", "lesbian"]
	},
	"1f469-1f469-1f467-1f467": {
		"code_points": {
			"base": "1f469-1f469-1f467-1f467",
			"non_fully_qualified": "1f469-1f469-1f467-1f467",
			"fully_qualified": "1f469-200d-1f469-200d-1f467-200d-1f467",
			"decimal": "&#128105;&#128105;&#128103;&#128103;"
		},
		"name": "family (woman,woman,girl,girl)",
		"shortname": ":family_wwgg:",
		"category": "people",
		"emoji_order": "1064",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "women", "baby", "lgbt", "lesbian"]
	},
	"1f3fb": {
		"code_points": {
			"base": "1f3fb",
			"non_fully_qualified": "1f3fb",
			"decimal": "&#127995;"
		},
		"name": "emoji modifier Fitzpatrick type-1-2",
		"shortname": ":tone1:",
		"category": "modifier",
		"emoji_order": "1075",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3fc": {
		"code_points": {
			"base": "1f3fc",
			"non_fully_qualified": "1f3fc",
			"decimal": "&#127996;"
		},
		"name": "emoji modifier Fitzpatrick type-3",
		"shortname": ":tone2:",
		"category": "modifier",
		"emoji_order": "1076",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3fd": {
		"code_points": {
			"base": "1f3fd",
			"non_fully_qualified": "1f3fd",
			"decimal": "&#127997;"
		},
		"name": "emoji modifier Fitzpatrick type-4",
		"shortname": ":tone3:",
		"category": "modifier",
		"emoji_order": "1077",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3fe": {
		"code_points": {
			"base": "1f3fe",
			"non_fully_qualified": "1f3fe",
			"decimal": "&#127998;"
		},
		"name": "emoji modifier Fitzpatrick type-5",
		"shortname": ":tone4:",
		"category": "modifier",
		"emoji_order": "1078",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3ff": {
		"code_points": {
			"base": "1f3ff",
			"non_fully_qualified": "1f3ff",
			"decimal": "&#127999;"
		},
		"name": "emoji modifier Fitzpatrick type-6",
		"shortname": ":tone5:",
		"category": "modifier",
		"emoji_order": "1079",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f4aa": {
		"code_points": {
			"base": "1f4aa",
			"non_fully_qualified": "1f4aa",
			"decimal": "&#128170;"
		},
		"name": "flexed biceps",
		"shortname": ":muscle:",
		"category": "people",
		"emoji_order": "1080",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "workout", "flex", "win", "diversity", "feminist", "boys night"]
	},
	"1f4aa-1f3fb": {
		"code_points": {
			"base": "1f4aa-1f3fb",
			"non_fully_qualified": "1f4aa-1f3fb",
			"decimal": "&#128170;&#127995;"
		},
		"name": "flexed biceps tone 1",
		"shortname": ":muscle_tone1:",
		"category": "people",
		"emoji_order": "1081",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f4aa-1f3fc": {
		"code_points": {
			"base": "1f4aa-1f3fc",
			"non_fully_qualified": "1f4aa-1f3fc",
			"decimal": "&#128170;&#127996;"
		},
		"name": "flexed biceps tone 2",
		"shortname": ":muscle_tone2:",
		"category": "people",
		"emoji_order": "1082",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f4aa-1f3fd": {
		"code_points": {
			"base": "1f4aa-1f3fd",
			"non_fully_qualified": "1f4aa-1f3fd",
			"decimal": "&#128170;&#127997;"
		},
		"name": "flexed biceps tone 3",
		"shortname": ":muscle_tone3:",
		"category": "people",
		"emoji_order": "1083",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f4aa-1f3fe": {
		"code_points": {
			"base": "1f4aa-1f3fe",
			"non_fully_qualified": "1f4aa-1f3fe",
			"decimal": "&#128170;&#127998;"
		},
		"name": "flexed biceps tone 4",
		"shortname": ":muscle_tone4:",
		"category": "people",
		"emoji_order": "1084",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f4aa-1f3ff": {
		"code_points": {
			"base": "1f4aa-1f3ff",
			"non_fully_qualified": "1f4aa-1f3ff",
			"decimal": "&#128170;&#127999;"
		},
		"name": "flexed biceps tone 5",
		"shortname": ":muscle_tone5:",
		"category": "people",
		"emoji_order": "1085",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f933": {
		"code_points": {
			"base": "1f933",
			"non_fully_qualified": "1f933",
			"decimal": "&#129331;"
		},
		"name": "selfie",
		"shortname": ":selfie:",
		"category": "people",
		"emoji_order": "1086",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f933-1f3fb": {
		"code_points": {
			"base": "1f933-1f3fb",
			"non_fully_qualified": "1f933-1f3fb",
			"decimal": "&#129331;&#127995;"
		},
		"name": "selfie tone 1",
		"shortname": ":selfie_tone1:",
		"category": "people",
		"emoji_order": "1087",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f933-1f3fc": {
		"code_points": {
			"base": "1f933-1f3fc",
			"non_fully_qualified": "1f933-1f3fc",
			"decimal": "&#129331;&#127996;"
		},
		"name": "selfie tone 2",
		"shortname": ":selfie_tone2:",
		"category": "people",
		"emoji_order": "1088",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f933-1f3fd": {
		"code_points": {
			"base": "1f933-1f3fd",
			"non_fully_qualified": "1f933-1f3fd",
			"decimal": "&#129331;&#127997;"
		},
		"name": "selfie tone 3",
		"shortname": ":selfie_tone3:",
		"category": "people",
		"emoji_order": "1089",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f933-1f3fe": {
		"code_points": {
			"base": "1f933-1f3fe",
			"non_fully_qualified": "1f933-1f3fe",
			"decimal": "&#129331;&#127998;"
		},
		"name": "selfie tone 4",
		"shortname": ":selfie_tone4:",
		"category": "people",
		"emoji_order": "1090",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f933-1f3ff": {
		"code_points": {
			"base": "1f933-1f3ff",
			"non_fully_qualified": "1f933-1f3ff",
			"decimal": "&#129331;&#127999;"
		},
		"name": "selfie tone 5",
		"shortname": ":selfie_tone5:",
		"category": "people",
		"emoji_order": "1091",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f448": {
		"code_points": {
			"base": "1f448",
			"non_fully_qualified": "1f448",
			"decimal": "&#128072;"
		},
		"name": "white left pointing backhand index",
		"shortname": ":point_left:",
		"category": "people",
		"emoji_order": "1092",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "diversity"]
	},
	"1f448-1f3fb": {
		"code_points": {
			"base": "1f448-1f3fb",
			"non_fully_qualified": "1f448-1f3fb",
			"decimal": "&#128072;&#127995;"
		},
		"name": "white left pointing backhand index tone 1",
		"shortname": ":point_left_tone1:",
		"category": "people",
		"emoji_order": "1093",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f448-1f3fc": {
		"code_points": {
			"base": "1f448-1f3fc",
			"non_fully_qualified": "1f448-1f3fc",
			"decimal": "&#128072;&#127996;"
		},
		"name": "white left pointing backhand index tone 2",
		"shortname": ":point_left_tone2:",
		"category": "people",
		"emoji_order": "1094",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f448-1f3fd": {
		"code_points": {
			"base": "1f448-1f3fd",
			"non_fully_qualified": "1f448-1f3fd",
			"decimal": "&#128072;&#127997;"
		},
		"name": "white left pointing backhand index tone 3",
		"shortname": ":point_left_tone3:",
		"category": "people",
		"emoji_order": "1095",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f448-1f3fe": {
		"code_points": {
			"base": "1f448-1f3fe",
			"non_fully_qualified": "1f448-1f3fe",
			"decimal": "&#128072;&#127998;"
		},
		"name": "white left pointing backhand index tone 4",
		"shortname": ":point_left_tone4:",
		"category": "people",
		"emoji_order": "1096",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f448-1f3ff": {
		"code_points": {
			"base": "1f448-1f3ff",
			"non_fully_qualified": "1f448-1f3ff",
			"decimal": "&#128072;&#127999;"
		},
		"name": "white left pointing backhand index tone 5",
		"shortname": ":point_left_tone5:",
		"category": "people",
		"emoji_order": "1097",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f449": {
		"code_points": {
			"base": "1f449",
			"non_fully_qualified": "1f449",
			"decimal": "&#128073;"
		},
		"name": "white right pointing backhand index",
		"shortname": ":point_right:",
		"category": "people",
		"emoji_order": "1098",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "diversity"]
	},
	"1f449-1f3fb": {
		"code_points": {
			"base": "1f449-1f3fb",
			"non_fully_qualified": "1f449-1f3fb",
			"decimal": "&#128073;&#127995;"
		},
		"name": "white right pointing backhand index tone 1",
		"shortname": ":point_right_tone1:",
		"category": "people",
		"emoji_order": "1099",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f449-1f3fc": {
		"code_points": {
			"base": "1f449-1f3fc",
			"non_fully_qualified": "1f449-1f3fc",
			"decimal": "&#128073;&#127996;"
		},
		"name": "white right pointing backhand index tone 2",
		"shortname": ":point_right_tone2:",
		"category": "people",
		"emoji_order": "1100",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f449-1f3fd": {
		"code_points": {
			"base": "1f449-1f3fd",
			"non_fully_qualified": "1f449-1f3fd",
			"decimal": "&#128073;&#127997;"
		},
		"name": "white right pointing backhand index tone 3",
		"shortname": ":point_right_tone3:",
		"category": "people",
		"emoji_order": "1101",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f449-1f3fe": {
		"code_points": {
			"base": "1f449-1f3fe",
			"non_fully_qualified": "1f449-1f3fe",
			"decimal": "&#128073;&#127998;"
		},
		"name": "white right pointing backhand index tone 4",
		"shortname": ":point_right_tone4:",
		"category": "people",
		"emoji_order": "1102",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f449-1f3ff": {
		"code_points": {
			"base": "1f449-1f3ff",
			"non_fully_qualified": "1f449-1f3ff",
			"decimal": "&#128073;&#127999;"
		},
		"name": "white right pointing backhand index tone 5",
		"shortname": ":point_right_tone5:",
		"category": "people",
		"emoji_order": "1103",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261d": {
		"code_points": {
			"base": "261d",
			"non_fully_qualified": "261d",
			"fully_qualified": "261d-fe0f",
			"decimal": "&#9757;"
		},
		"name": "white up pointing index",
		"shortname": ":point_up:",
		"category": "people",
		"emoji_order": "1104",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "emojione", "diversity"]
	},
	"261d-1f3fb": {
		"code_points": {
			"base": "261d-1f3fb",
			"non_fully_qualified": "261d-1f3fb",
			"decimal": "&#9757;&#127995;"
		},
		"name": "white up pointing index tone 1",
		"shortname": ":point_up_tone1:",
		"category": "people",
		"emoji_order": "1105",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261d-1f3fc": {
		"code_points": {
			"base": "261d-1f3fc",
			"non_fully_qualified": "261d-1f3fc",
			"decimal": "&#9757;&#127996;"
		},
		"name": "white up pointing index tone 2",
		"shortname": ":point_up_tone2:",
		"category": "people",
		"emoji_order": "1106",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261d-1f3fd": {
		"code_points": {
			"base": "261d-1f3fd",
			"non_fully_qualified": "261d-1f3fd",
			"decimal": "&#9757;&#127997;"
		},
		"name": "white up pointing index tone 3",
		"shortname": ":point_up_tone3:",
		"category": "people",
		"emoji_order": "1107",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261d-1f3fe": {
		"code_points": {
			"base": "261d-1f3fe",
			"non_fully_qualified": "261d-1f3fe",
			"decimal": "&#9757;&#127998;"
		},
		"name": "white up pointing index tone 4",
		"shortname": ":point_up_tone4:",
		"category": "people",
		"emoji_order": "1108",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261d-1f3ff": {
		"code_points": {
			"base": "261d-1f3ff",
			"non_fully_qualified": "261d-1f3ff",
			"decimal": "&#9757;&#127999;"
		},
		"name": "white up pointing index tone 5",
		"shortname": ":point_up_tone5:",
		"category": "people",
		"emoji_order": "1109",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f446": {
		"code_points": {
			"base": "1f446",
			"non_fully_qualified": "1f446",
			"decimal": "&#128070;"
		},
		"name": "white up pointing backhand index",
		"shortname": ":point_up_2:",
		"category": "people",
		"emoji_order": "1110",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "diversity"]
	},
	"1f446-1f3fb": {
		"code_points": {
			"base": "1f446-1f3fb",
			"non_fully_qualified": "1f446-1f3fb",
			"decimal": "&#128070;&#127995;"
		},
		"name": "white up pointing backhand index tone 1",
		"shortname": ":point_up_2_tone1:",
		"category": "people",
		"emoji_order": "1111",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f446-1f3fc": {
		"code_points": {
			"base": "1f446-1f3fc",
			"non_fully_qualified": "1f446-1f3fc",
			"decimal": "&#128070;&#127996;"
		},
		"name": "white up pointing backhand index tone 2",
		"shortname": ":point_up_2_tone2:",
		"category": "people",
		"emoji_order": "1112",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f446-1f3fd": {
		"code_points": {
			"base": "1f446-1f3fd",
			"non_fully_qualified": "1f446-1f3fd",
			"decimal": "&#128070;&#127997;"
		},
		"name": "white up pointing backhand index tone 3",
		"shortname": ":point_up_2_tone3:",
		"category": "people",
		"emoji_order": "1113",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f446-1f3fe": {
		"code_points": {
			"base": "1f446-1f3fe",
			"non_fully_qualified": "1f446-1f3fe",
			"decimal": "&#128070;&#127998;"
		},
		"name": "white up pointing backhand index tone 4",
		"shortname": ":point_up_2_tone4:",
		"category": "people",
		"emoji_order": "1114",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f446-1f3ff": {
		"code_points": {
			"base": "1f446-1f3ff",
			"non_fully_qualified": "1f446-1f3ff",
			"decimal": "&#128070;&#127999;"
		},
		"name": "white up pointing backhand index tone 5",
		"shortname": ":point_up_2_tone5:",
		"category": "people",
		"emoji_order": "1115",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f595": {
		"code_points": {
			"base": "1f595",
			"non_fully_qualified": "1f595",
			"decimal": "&#128405;"
		},
		"name": "reversed hand with middle finger extended",
		"shortname": ":middle_finger:",
		"category": "people",
		"emoji_order": "1116",
		"shortname_alternates": [":reversed_hand_with_middle_finger_extended:"],
		"ascii": [],
		"keywords": ["body", "hands", "middle finger", "diversity"]
	},
	"1f595-1f3fb": {
		"code_points": {
			"base": "1f595-1f3fb",
			"non_fully_qualified": "1f595-1f3fb",
			"decimal": "&#128405;&#127995;"
		},
		"name": "reversed hand with middle finger extended tone 1",
		"shortname": ":middle_finger_tone1:",
		"category": "people",
		"emoji_order": "1117",
		"shortname_alternates": [":reversed_hand_with_middle_finger_extended_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f595-1f3fc": {
		"code_points": {
			"base": "1f595-1f3fc",
			"non_fully_qualified": "1f595-1f3fc",
			"decimal": "&#128405;&#127996;"
		},
		"name": "reversed hand with middle finger extended tone 2",
		"shortname": ":middle_finger_tone2:",
		"category": "people",
		"emoji_order": "1118",
		"shortname_alternates": [":reversed_hand_with_middle_finger_extended_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f595-1f3fd": {
		"code_points": {
			"base": "1f595-1f3fd",
			"non_fully_qualified": "1f595-1f3fd",
			"decimal": "&#128405;&#127997;"
		},
		"name": "reversed hand with middle finger extended tone 3",
		"shortname": ":middle_finger_tone3:",
		"category": "people",
		"emoji_order": "1119",
		"shortname_alternates": [":reversed_hand_with_middle_finger_extended_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f595-1f3fe": {
		"code_points": {
			"base": "1f595-1f3fe",
			"non_fully_qualified": "1f595-1f3fe",
			"decimal": "&#128405;&#127998;"
		},
		"name": "reversed hand with middle finger extended tone 4",
		"shortname": ":middle_finger_tone4:",
		"category": "people",
		"emoji_order": "1120",
		"shortname_alternates": [":reversed_hand_with_middle_finger_extended_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f595-1f3ff": {
		"code_points": {
			"base": "1f595-1f3ff",
			"non_fully_qualified": "1f595-1f3ff",
			"decimal": "&#128405;&#127999;"
		},
		"name": "reversed hand with middle finger extended tone 5",
		"shortname": ":middle_finger_tone5:",
		"category": "people",
		"emoji_order": "1121",
		"shortname_alternates": [":reversed_hand_with_middle_finger_extended_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f447": {
		"code_points": {
			"base": "1f447",
			"non_fully_qualified": "1f447",
			"decimal": "&#128071;"
		},
		"name": "white down pointing backhand index",
		"shortname": ":point_down:",
		"category": "people",
		"emoji_order": "1122",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "diversity"]
	},
	"1f447-1f3fb": {
		"code_points": {
			"base": "1f447-1f3fb",
			"non_fully_qualified": "1f447-1f3fb",
			"decimal": "&#128071;&#127995;"
		},
		"name": "white down pointing backhand index tone 1",
		"shortname": ":point_down_tone1:",
		"category": "people",
		"emoji_order": "1123",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f447-1f3fc": {
		"code_points": {
			"base": "1f447-1f3fc",
			"non_fully_qualified": "1f447-1f3fc",
			"decimal": "&#128071;&#127996;"
		},
		"name": "white down pointing backhand index tone 2",
		"shortname": ":point_down_tone2:",
		"category": "people",
		"emoji_order": "1124",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f447-1f3fd": {
		"code_points": {
			"base": "1f447-1f3fd",
			"non_fully_qualified": "1f447-1f3fd",
			"decimal": "&#128071;&#127997;"
		},
		"name": "white down pointing backhand index tone 3",
		"shortname": ":point_down_tone3:",
		"category": "people",
		"emoji_order": "1125",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f447-1f3fe": {
		"code_points": {
			"base": "1f447-1f3fe",
			"non_fully_qualified": "1f447-1f3fe",
			"decimal": "&#128071;&#127998;"
		},
		"name": "white down pointing backhand index tone 4",
		"shortname": ":point_down_tone4:",
		"category": "people",
		"emoji_order": "1126",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f447-1f3ff": {
		"code_points": {
			"base": "1f447-1f3ff",
			"non_fully_qualified": "1f447-1f3ff",
			"decimal": "&#128071;&#127999;"
		},
		"name": "white down pointing backhand index tone 5",
		"shortname": ":point_down_tone5:",
		"category": "people",
		"emoji_order": "1127",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270c": {
		"code_points": {
			"base": "270c",
			"non_fully_qualified": "270c",
			"fully_qualified": "270c-fe0f",
			"decimal": "&#9996;"
		},
		"name": "victory hand",
		"shortname": ":v:",
		"category": "people",
		"emoji_order": "1128",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "thank you", "peace", "diversity", "girls night"]
	},
	"270c-1f3fb": {
		"code_points": {
			"base": "270c-1f3fb",
			"non_fully_qualified": "270c-1f3fb",
			"decimal": "&#9996;&#127995;"
		},
		"name": "victory hand tone 1",
		"shortname": ":v_tone1:",
		"category": "people",
		"emoji_order": "1129",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270c-1f3fc": {
		"code_points": {
			"base": "270c-1f3fc",
			"non_fully_qualified": "270c-1f3fc",
			"decimal": "&#9996;&#127996;"
		},
		"name": "victory hand tone 2",
		"shortname": ":v_tone2:",
		"category": "people",
		"emoji_order": "1130",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270c-1f3fd": {
		"code_points": {
			"base": "270c-1f3fd",
			"non_fully_qualified": "270c-1f3fd",
			"decimal": "&#9996;&#127997;"
		},
		"name": "victory hand tone 3",
		"shortname": ":v_tone3:",
		"category": "people",
		"emoji_order": "1131",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270c-1f3fe": {
		"code_points": {
			"base": "270c-1f3fe",
			"non_fully_qualified": "270c-1f3fe",
			"decimal": "&#9996;&#127998;"
		},
		"name": "victory hand tone 4",
		"shortname": ":v_tone4:",
		"category": "people",
		"emoji_order": "1132",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270c-1f3ff": {
		"code_points": {
			"base": "270c-1f3ff",
			"non_fully_qualified": "270c-1f3ff",
			"decimal": "&#9996;&#127999;"
		},
		"name": "victory hand tone 5",
		"shortname": ":v_tone5:",
		"category": "people",
		"emoji_order": "1133",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f91e": {
		"code_points": {
			"base": "1f91e",
			"non_fully_qualified": "1f91e",
			"decimal": "&#129310;"
		},
		"name": "hand with first and index finger crossed",
		"shortname": ":fingers_crossed:",
		"category": "people",
		"emoji_order": "1134",
		"shortname_alternates": [":hand_with_index_and_middle_finger_crossed:"],
		"ascii": [],
		"keywords": []
	},
	"1f91e-1f3fb": {
		"code_points": {
			"base": "1f91e-1f3fb",
			"non_fully_qualified": "1f91e-1f3fb",
			"decimal": "&#129310;&#127995;"
		},
		"name": "hand with index and middle fingers crossed tone 1",
		"shortname": ":fingers_crossed_tone1:",
		"category": "people",
		"emoji_order": "1135",
		"shortname_alternates": [":hand_with_index_and_middle_fingers_crossed_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f91e-1f3fc": {
		"code_points": {
			"base": "1f91e-1f3fc",
			"non_fully_qualified": "1f91e-1f3fc",
			"decimal": "&#129310;&#127996;"
		},
		"name": "hand with index and middle fingers crossed tone 2",
		"shortname": ":fingers_crossed_tone2:",
		"category": "people",
		"emoji_order": "1136",
		"shortname_alternates": [":hand_with_index_and_middle_fingers_crossed_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f91e-1f3fd": {
		"code_points": {
			"base": "1f91e-1f3fd",
			"non_fully_qualified": "1f91e-1f3fd",
			"decimal": "&#129310;&#127997;"
		},
		"name": "hand with index and middle fingers crossed tone 3",
		"shortname": ":fingers_crossed_tone3:",
		"category": "people",
		"emoji_order": "1137",
		"shortname_alternates": [":hand_with_index_and_middle_fingers_crossed_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f91e-1f3fe": {
		"code_points": {
			"base": "1f91e-1f3fe",
			"non_fully_qualified": "1f91e-1f3fe",
			"decimal": "&#129310;&#127998;"
		},
		"name": "hand with index and middle fingers crossed tone 4",
		"shortname": ":fingers_crossed_tone4:",
		"category": "people",
		"emoji_order": "1138",
		"shortname_alternates": [":hand_with_index_and_middle_fingers_crossed_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f91e-1f3ff": {
		"code_points": {
			"base": "1f91e-1f3ff",
			"non_fully_qualified": "1f91e-1f3ff",
			"decimal": "&#129310;&#127999;"
		},
		"name": "hand with index and middle fingers crossed tone 5",
		"shortname": ":fingers_crossed_tone5:",
		"category": "people",
		"emoji_order": "1139",
		"shortname_alternates": [":hand_with_index_and_middle_fingers_crossed_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f596": {
		"code_points": {
			"base": "1f596",
			"non_fully_qualified": "1f596",
			"decimal": "&#128406;"
		},
		"name": "raised hand with part between middle and ring fingers",
		"shortname": ":vulcan:",
		"category": "people",
		"emoji_order": "1140",
		"shortname_alternates": [":raised_hand_with_part_between_middle_and_ring_fingers:"],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "diversity"]
	},
	"1f596-1f3fb": {
		"code_points": {
			"base": "1f596-1f3fb",
			"non_fully_qualified": "1f596-1f3fb",
			"decimal": "&#128406;&#127995;"
		},
		"name": "raised hand with part between middle and ring fingers tone 1",
		"shortname": ":vulcan_tone1:",
		"category": "people",
		"emoji_order": "1141",
		"shortname_alternates": [":raised_hand_with_part_between_middle_and_ring_fingers_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f596-1f3fc": {
		"code_points": {
			"base": "1f596-1f3fc",
			"non_fully_qualified": "1f596-1f3fc",
			"decimal": "&#128406;&#127996;"
		},
		"name": "raised hand with part between middle and ring fingers tone 2",
		"shortname": ":vulcan_tone2:",
		"category": "people",
		"emoji_order": "1142",
		"shortname_alternates": [":raised_hand_with_part_between_middle_and_ring_fingers_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f596-1f3fd": {
		"code_points": {
			"base": "1f596-1f3fd",
			"non_fully_qualified": "1f596-1f3fd",
			"decimal": "&#128406;&#127997;"
		},
		"name": "raised hand with part between middle and ring fingers tone 3",
		"shortname": ":vulcan_tone3:",
		"category": "people",
		"emoji_order": "1143",
		"shortname_alternates": [":raised_hand_with_part_between_middle_and_ring_fingers_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f596-1f3fe": {
		"code_points": {
			"base": "1f596-1f3fe",
			"non_fully_qualified": "1f596-1f3fe",
			"decimal": "&#128406;&#127998;"
		},
		"name": "raised hand with part between middle and ring fingers tone 4",
		"shortname": ":vulcan_tone4:",
		"category": "people",
		"emoji_order": "1144",
		"shortname_alternates": [":raised_hand_with_part_between_middle_and_ring_fingers_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f596-1f3ff": {
		"code_points": {
			"base": "1f596-1f3ff",
			"non_fully_qualified": "1f596-1f3ff",
			"decimal": "&#128406;&#127999;"
		},
		"name": "raised hand with part between middle and ring fingers tone 5",
		"shortname": ":vulcan_tone5:",
		"category": "people",
		"emoji_order": "1145",
		"shortname_alternates": [":raised_hand_with_part_between_middle_and_ring_fingers_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f918": {
		"code_points": {
			"base": "1f918",
			"non_fully_qualified": "1f918",
			"decimal": "&#129304;"
		},
		"name": "sign of the horns",
		"shortname": ":metal:",
		"category": "people",
		"emoji_order": "1146",
		"shortname_alternates": [":sign_of_the_horns:"],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "diversity", "boys night", "parties"]
	},
	"1f918-1f3fb": {
		"code_points": {
			"base": "1f918-1f3fb",
			"non_fully_qualified": "1f918-1f3fb",
			"decimal": "&#129304;&#127995;"
		},
		"name": "sign of the horns tone 1",
		"shortname": ":metal_tone1:",
		"category": "people",
		"emoji_order": "1147",
		"shortname_alternates": [":sign_of_the_horns_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f918-1f3fc": {
		"code_points": {
			"base": "1f918-1f3fc",
			"non_fully_qualified": "1f918-1f3fc",
			"decimal": "&#129304;&#127996;"
		},
		"name": "sign of the horns tone 2",
		"shortname": ":metal_tone2:",
		"category": "people",
		"emoji_order": "1148",
		"shortname_alternates": [":sign_of_the_horns_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f918-1f3fd": {
		"code_points": {
			"base": "1f918-1f3fd",
			"non_fully_qualified": "1f918-1f3fd",
			"decimal": "&#129304;&#127997;"
		},
		"name": "sign of the horns tone 3",
		"shortname": ":metal_tone3:",
		"category": "people",
		"emoji_order": "1149",
		"shortname_alternates": [":sign_of_the_horns_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f918-1f3fe": {
		"code_points": {
			"base": "1f918-1f3fe",
			"non_fully_qualified": "1f918-1f3fe",
			"decimal": "&#129304;&#127998;"
		},
		"name": "sign of the horns tone 4",
		"shortname": ":metal_tone4:",
		"category": "people",
		"emoji_order": "1150",
		"shortname_alternates": [":sign_of_the_horns_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f918-1f3ff": {
		"code_points": {
			"base": "1f918-1f3ff",
			"non_fully_qualified": "1f918-1f3ff",
			"decimal": "&#129304;&#127999;"
		},
		"name": "sign of the horns tone 5",
		"shortname": ":metal_tone5:",
		"category": "people",
		"emoji_order": "1151",
		"shortname_alternates": [":sign_of_the_horns_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f919": {
		"code_points": {
			"base": "1f919",
			"non_fully_qualified": "1f919",
			"decimal": "&#129305;"
		},
		"name": "call me hand",
		"shortname": ":call_me:",
		"category": "people",
		"emoji_order": "1152",
		"shortname_alternates": [":call_me_hand:"],
		"ascii": [],
		"keywords": []
	},
	"1f919-1f3fb": {
		"code_points": {
			"base": "1f919-1f3fb",
			"non_fully_qualified": "1f919-1f3fb",
			"decimal": "&#129305;&#127995;"
		},
		"name": "call me hand tone 1",
		"shortname": ":call_me_tone1:",
		"category": "people",
		"emoji_order": "1153",
		"shortname_alternates": [":call_me_hand_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f919-1f3fc": {
		"code_points": {
			"base": "1f919-1f3fc",
			"non_fully_qualified": "1f919-1f3fc",
			"decimal": "&#129305;&#127996;"
		},
		"name": "call me hand tone 2",
		"shortname": ":call_me_tone2:",
		"category": "people",
		"emoji_order": "1154",
		"shortname_alternates": [":call_me_hand_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f919-1f3fd": {
		"code_points": {
			"base": "1f919-1f3fd",
			"non_fully_qualified": "1f919-1f3fd",
			"decimal": "&#129305;&#127997;"
		},
		"name": "call me hand tone 3",
		"shortname": ":call_me_tone3:",
		"category": "people",
		"emoji_order": "1155",
		"shortname_alternates": [":call_me_hand_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f919-1f3fe": {
		"code_points": {
			"base": "1f919-1f3fe",
			"non_fully_qualified": "1f919-1f3fe",
			"decimal": "&#129305;&#127998;"
		},
		"name": "call me hand tone 4",
		"shortname": ":call_me_tone4:",
		"category": "people",
		"emoji_order": "1156",
		"shortname_alternates": [":call_me_hand_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f919-1f3ff": {
		"code_points": {
			"base": "1f919-1f3ff",
			"non_fully_qualified": "1f919-1f3ff",
			"decimal": "&#129305;&#127999;"
		},
		"name": "call me hand tone 5",
		"shortname": ":call_me_tone5:",
		"category": "people",
		"emoji_order": "1157",
		"shortname_alternates": [":call_me_hand_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f590": {
		"code_points": {
			"base": "1f590",
			"non_fully_qualified": "1f590",
			"fully_qualified": "1f590-fe0f",
			"decimal": "&#128400;"
		},
		"name": "raised hand with fingers splayed",
		"shortname": ":hand_splayed:",
		"category": "people",
		"emoji_order": "1158",
		"shortname_alternates": [":raised_hand_with_fingers_splayed:"],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "diversity"]
	},
	"1f590-1f3fb": {
		"code_points": {
			"base": "1f590-1f3fb",
			"non_fully_qualified": "1f590-1f3fb",
			"decimal": "&#128400;&#127995;"
		},
		"name": "raised hand with fingers splayed tone 1",
		"shortname": ":hand_splayed_tone1:",
		"category": "people",
		"emoji_order": "1159",
		"shortname_alternates": [":raised_hand_with_fingers_splayed_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f590-1f3fc": {
		"code_points": {
			"base": "1f590-1f3fc",
			"non_fully_qualified": "1f590-1f3fc",
			"decimal": "&#128400;&#127996;"
		},
		"name": "raised hand with fingers splayed tone 2",
		"shortname": ":hand_splayed_tone2:",
		"category": "people",
		"emoji_order": "1160",
		"shortname_alternates": [":raised_hand_with_fingers_splayed_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f590-1f3fd": {
		"code_points": {
			"base": "1f590-1f3fd",
			"non_fully_qualified": "1f590-1f3fd",
			"decimal": "&#128400;&#127997;"
		},
		"name": "raised hand with fingers splayed tone 3",
		"shortname": ":hand_splayed_tone3:",
		"category": "people",
		"emoji_order": "1161",
		"shortname_alternates": [":raised_hand_with_fingers_splayed_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f590-1f3fe": {
		"code_points": {
			"base": "1f590-1f3fe",
			"non_fully_qualified": "1f590-1f3fe",
			"decimal": "&#128400;&#127998;"
		},
		"name": "raised hand with fingers splayed tone 4",
		"shortname": ":hand_splayed_tone4:",
		"category": "people",
		"emoji_order": "1162",
		"shortname_alternates": [":raised_hand_with_fingers_splayed_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f590-1f3ff": {
		"code_points": {
			"base": "1f590-1f3ff",
			"non_fully_qualified": "1f590-1f3ff",
			"decimal": "&#128400;&#127999;"
		},
		"name": "raised hand with fingers splayed tone 5",
		"shortname": ":hand_splayed_tone5:",
		"category": "people",
		"emoji_order": "1163",
		"shortname_alternates": [":raised_hand_with_fingers_splayed_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"270b": {
		"code_points": {
			"base": "270b",
			"non_fully_qualified": "270b",
			"decimal": "&#9995;"
		},
		"name": "raised hand",
		"shortname": ":raised_hand:",
		"category": "people",
		"emoji_order": "1164",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "diversity", "girls night"]
	},
	"270b-1f3fb": {
		"code_points": {
			"base": "270b-1f3fb",
			"non_fully_qualified": "270b-1f3fb",
			"decimal": "&#9995;&#127995;"
		},
		"name": "raised hand tone 1",
		"shortname": ":raised_hand_tone1:",
		"category": "people",
		"emoji_order": "1165",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270b-1f3fc": {
		"code_points": {
			"base": "270b-1f3fc",
			"non_fully_qualified": "270b-1f3fc",
			"decimal": "&#9995;&#127996;"
		},
		"name": "raised hand tone 2",
		"shortname": ":raised_hand_tone2:",
		"category": "people",
		"emoji_order": "1166",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270b-1f3fd": {
		"code_points": {
			"base": "270b-1f3fd",
			"non_fully_qualified": "270b-1f3fd",
			"decimal": "&#9995;&#127997;"
		},
		"name": "raised hand tone 3",
		"shortname": ":raised_hand_tone3:",
		"category": "people",
		"emoji_order": "1167",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270b-1f3fe": {
		"code_points": {
			"base": "270b-1f3fe",
			"non_fully_qualified": "270b-1f3fe",
			"decimal": "&#9995;&#127998;"
		},
		"name": "raised hand tone 4",
		"shortname": ":raised_hand_tone4:",
		"category": "people",
		"emoji_order": "1168",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270b-1f3ff": {
		"code_points": {
			"base": "270b-1f3ff",
			"non_fully_qualified": "270b-1f3ff",
			"decimal": "&#9995;&#127999;"
		},
		"name": "raised hand tone 5",
		"shortname": ":raised_hand_tone5:",
		"category": "people",
		"emoji_order": "1169",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44c": {
		"code_points": {
			"base": "1f44c",
			"non_fully_qualified": "1f44c",
			"decimal": "&#128076;"
		},
		"name": "ok hand sign",
		"shortname": ":ok_hand:",
		"category": "people",
		"emoji_order": "1170",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "diversity", "perfect", "good", "beautiful"]
	},
	"1f44c-1f3fb": {
		"code_points": {
			"base": "1f44c-1f3fb",
			"non_fully_qualified": "1f44c-1f3fb",
			"decimal": "&#128076;&#127995;"
		},
		"name": "ok hand sign tone 1",
		"shortname": ":ok_hand_tone1:",
		"category": "people",
		"emoji_order": "1171",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44c-1f3fc": {
		"code_points": {
			"base": "1f44c-1f3fc",
			"non_fully_qualified": "1f44c-1f3fc",
			"decimal": "&#128076;&#127996;"
		},
		"name": "ok hand sign tone 2",
		"shortname": ":ok_hand_tone2:",
		"category": "people",
		"emoji_order": "1172",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44c-1f3fd": {
		"code_points": {
			"base": "1f44c-1f3fd",
			"non_fully_qualified": "1f44c-1f3fd",
			"decimal": "&#128076;&#127997;"
		},
		"name": "ok hand sign tone 3",
		"shortname": ":ok_hand_tone3:",
		"category": "people",
		"emoji_order": "1173",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44c-1f3fe": {
		"code_points": {
			"base": "1f44c-1f3fe",
			"non_fully_qualified": "1f44c-1f3fe",
			"decimal": "&#128076;&#127998;"
		},
		"name": "ok hand sign tone 4",
		"shortname": ":ok_hand_tone4:",
		"category": "people",
		"emoji_order": "1174",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44c-1f3ff": {
		"code_points": {
			"base": "1f44c-1f3ff",
			"non_fully_qualified": "1f44c-1f3ff",
			"decimal": "&#128076;&#127999;"
		},
		"name": "ok hand sign tone 5",
		"shortname": ":ok_hand_tone5:",
		"category": "people",
		"emoji_order": "1175",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44d": {
		"code_points": {
			"base": "1f44d",
			"non_fully_qualified": "1f44d",
			"decimal": "&#128077;"
		},
		"name": "thumbs up sign",
		"shortname": ":thumbsup:",
		"category": "people",
		"emoji_order": "1176",
		"shortname_alternates": [":+1:", ":thumbup:"],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "luck", "thank you", "diversity", "perfect", "good", "beautiful"]
	},
	"1f44d-1f3fb": {
		"code_points": {
			"base": "1f44d-1f3fb",
			"non_fully_qualified": "1f44d-1f3fb",
			"decimal": "&#128077;&#127995;"
		},
		"name": "thumbs up sign tone 1",
		"shortname": ":thumbsup_tone1:",
		"category": "people",
		"emoji_order": "1177",
		"shortname_alternates": [":+1_tone1:", ":thumbup_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f44d-1f3fc": {
		"code_points": {
			"base": "1f44d-1f3fc",
			"non_fully_qualified": "1f44d-1f3fc",
			"decimal": "&#128077;&#127996;"
		},
		"name": "thumbs up sign tone 2",
		"shortname": ":thumbsup_tone2:",
		"category": "people",
		"emoji_order": "1178",
		"shortname_alternates": [":+1_tone2:", ":thumbup_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f44d-1f3fd": {
		"code_points": {
			"base": "1f44d-1f3fd",
			"non_fully_qualified": "1f44d-1f3fd",
			"decimal": "&#128077;&#127997;"
		},
		"name": "thumbs up sign tone 3",
		"shortname": ":thumbsup_tone3:",
		"category": "people",
		"emoji_order": "1179",
		"shortname_alternates": [":+1_tone3:", ":thumbup_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f44d-1f3fe": {
		"code_points": {
			"base": "1f44d-1f3fe",
			"non_fully_qualified": "1f44d-1f3fe",
			"decimal": "&#128077;&#127998;"
		},
		"name": "thumbs up sign tone 4",
		"shortname": ":thumbsup_tone4:",
		"category": "people",
		"emoji_order": "1180",
		"shortname_alternates": [":+1_tone4:", ":thumbup_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f44d-1f3ff": {
		"code_points": {
			"base": "1f44d-1f3ff",
			"non_fully_qualified": "1f44d-1f3ff",
			"decimal": "&#128077;&#127999;"
		},
		"name": "thumbs up sign tone 5",
		"shortname": ":thumbsup_tone5:",
		"category": "people",
		"emoji_order": "1181",
		"shortname_alternates": [":+1_tone5:", ":thumbup_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f44e": {
		"code_points": {
			"base": "1f44e",
			"non_fully_qualified": "1f44e",
			"decimal": "&#128078;"
		},
		"name": "thumbs down sign",
		"shortname": ":thumbsdown:",
		"category": "people",
		"emoji_order": "1182",
		"shortname_alternates": [":-1:", ":thumbdown:"],
		"ascii": [],
		"keywords": ["body", "hands", "diversity"]
	},
	"1f44e-1f3fb": {
		"code_points": {
			"base": "1f44e-1f3fb",
			"non_fully_qualified": "1f44e-1f3fb",
			"decimal": "&#128078;&#127995;"
		},
		"name": "thumbs down sign tone 1",
		"shortname": ":thumbsdown_tone1:",
		"category": "people",
		"emoji_order": "1183",
		"shortname_alternates": [":-1_tone1:", ":thumbdown_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f44e-1f3fc": {
		"code_points": {
			"base": "1f44e-1f3fc",
			"non_fully_qualified": "1f44e-1f3fc",
			"decimal": "&#128078;&#127996;"
		},
		"name": "thumbs down sign tone 2",
		"shortname": ":thumbsdown_tone2:",
		"category": "people",
		"emoji_order": "1184",
		"shortname_alternates": [":-1_tone2:", ":thumbdown_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f44e-1f3fd": {
		"code_points": {
			"base": "1f44e-1f3fd",
			"non_fully_qualified": "1f44e-1f3fd",
			"decimal": "&#128078;&#127997;"
		},
		"name": "thumbs down sign tone 3",
		"shortname": ":thumbsdown_tone3:",
		"category": "people",
		"emoji_order": "1185",
		"shortname_alternates": [":-1_tone3:", ":thumbdown_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f44e-1f3fe": {
		"code_points": {
			"base": "1f44e-1f3fe",
			"non_fully_qualified": "1f44e-1f3fe",
			"decimal": "&#128078;&#127998;"
		},
		"name": "thumbs down sign tone 4",
		"shortname": ":thumbsdown_tone4:",
		"category": "people",
		"emoji_order": "1186",
		"shortname_alternates": [":-1_tone4:", ":thumbdown_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f44e-1f3ff": {
		"code_points": {
			"base": "1f44e-1f3ff",
			"non_fully_qualified": "1f44e-1f3ff",
			"decimal": "&#128078;&#127999;"
		},
		"name": "thumbs down sign tone 5",
		"shortname": ":thumbsdown_tone5:",
		"category": "people",
		"emoji_order": "1187",
		"shortname_alternates": [":-1_tone5:", ":thumbdown_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"270a": {
		"code_points": {
			"base": "270a",
			"non_fully_qualified": "270a",
			"decimal": "&#9994;"
		},
		"name": "raised fist",
		"shortname": ":fist:",
		"category": "people",
		"emoji_order": "1188",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "fist bump", "diversity", "condolence"]
	},
	"270a-1f3fb": {
		"code_points": {
			"base": "270a-1f3fb",
			"non_fully_qualified": "270a-1f3fb",
			"decimal": "&#9994;&#127995;"
		},
		"name": "raised fist tone 1",
		"shortname": ":fist_tone1:",
		"category": "people",
		"emoji_order": "1189",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270a-1f3fc": {
		"code_points": {
			"base": "270a-1f3fc",
			"non_fully_qualified": "270a-1f3fc",
			"decimal": "&#9994;&#127996;"
		},
		"name": "raised fist tone 2",
		"shortname": ":fist_tone2:",
		"category": "people",
		"emoji_order": "1190",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270a-1f3fd": {
		"code_points": {
			"base": "270a-1f3fd",
			"non_fully_qualified": "270a-1f3fd",
			"decimal": "&#9994;&#127997;"
		},
		"name": "raised fist tone 3",
		"shortname": ":fist_tone3:",
		"category": "people",
		"emoji_order": "1191",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270a-1f3fe": {
		"code_points": {
			"base": "270a-1f3fe",
			"non_fully_qualified": "270a-1f3fe",
			"decimal": "&#9994;&#127998;"
		},
		"name": "raised fist tone 4",
		"shortname": ":fist_tone4:",
		"category": "people",
		"emoji_order": "1192",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270a-1f3ff": {
		"code_points": {
			"base": "270a-1f3ff",
			"non_fully_qualified": "270a-1f3ff",
			"decimal": "&#9994;&#127999;"
		},
		"name": "raised fist tone 5",
		"shortname": ":fist_tone5:",
		"category": "people",
		"emoji_order": "1193",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44a": {
		"code_points": {
			"base": "1f44a",
			"non_fully_qualified": "1f44a",
			"decimal": "&#128074;"
		},
		"name": "fisted hand sign",
		"shortname": ":punch:",
		"category": "people",
		"emoji_order": "1194",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "fist bump", "diversity", "boys night"]
	},
	"1f44a-1f3fb": {
		"code_points": {
			"base": "1f44a-1f3fb",
			"non_fully_qualified": "1f44a-1f3fb",
			"decimal": "&#128074;&#127995;"
		},
		"name": "fisted hand sign tone 1",
		"shortname": ":punch_tone1:",
		"category": "people",
		"emoji_order": "1195",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44a-1f3fc": {
		"code_points": {
			"base": "1f44a-1f3fc",
			"non_fully_qualified": "1f44a-1f3fc",
			"decimal": "&#128074;&#127996;"
		},
		"name": "fisted hand sign tone 2",
		"shortname": ":punch_tone2:",
		"category": "people",
		"emoji_order": "1196",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44a-1f3fd": {
		"code_points": {
			"base": "1f44a-1f3fd",
			"non_fully_qualified": "1f44a-1f3fd",
			"decimal": "&#128074;&#127997;"
		},
		"name": "fisted hand sign tone 3",
		"shortname": ":punch_tone3:",
		"category": "people",
		"emoji_order": "1197",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44a-1f3fe": {
		"code_points": {
			"base": "1f44a-1f3fe",
			"non_fully_qualified": "1f44a-1f3fe",
			"decimal": "&#128074;&#127998;"
		},
		"name": "fisted hand sign tone 4",
		"shortname": ":punch_tone4:",
		"category": "people",
		"emoji_order": "1198",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44a-1f3ff": {
		"code_points": {
			"base": "1f44a-1f3ff",
			"non_fully_qualified": "1f44a-1f3ff",
			"decimal": "&#128074;&#127999;"
		},
		"name": "fisted hand sign tone 5",
		"shortname": ":punch_tone5:",
		"category": "people",
		"emoji_order": "1199",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f91b": {
		"code_points": {
			"base": "1f91b",
			"non_fully_qualified": "1f91b",
			"decimal": "&#129307;"
		},
		"name": "left-facing fist",
		"shortname": ":left_facing_fist:",
		"category": "people",
		"emoji_order": "1200",
		"shortname_alternates": [":left_fist:"],
		"ascii": [],
		"keywords": []
	},
	"1f91b-1f3fb": {
		"code_points": {
			"base": "1f91b-1f3fb",
			"non_fully_qualified": "1f91b-1f3fb",
			"decimal": "&#129307;&#127995;"
		},
		"name": "left facing fist tone 1",
		"shortname": ":left_facing_fist_tone1:",
		"category": "people",
		"emoji_order": "1201",
		"shortname_alternates": [":left_fist_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f91b-1f3fc": {
		"code_points": {
			"base": "1f91b-1f3fc",
			"non_fully_qualified": "1f91b-1f3fc",
			"decimal": "&#129307;&#127996;"
		},
		"name": "left facing fist tone 2",
		"shortname": ":left_facing_fist_tone2:",
		"category": "people",
		"emoji_order": "1202",
		"shortname_alternates": [":left_fist_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f91b-1f3fd": {
		"code_points": {
			"base": "1f91b-1f3fd",
			"non_fully_qualified": "1f91b-1f3fd",
			"decimal": "&#129307;&#127997;"
		},
		"name": "left facing fist tone 3",
		"shortname": ":left_facing_fist_tone3:",
		"category": "people",
		"emoji_order": "1203",
		"shortname_alternates": [":left_fist_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f91b-1f3fe": {
		"code_points": {
			"base": "1f91b-1f3fe",
			"non_fully_qualified": "1f91b-1f3fe",
			"decimal": "&#129307;&#127998;"
		},
		"name": "left facing fist tone 4",
		"shortname": ":left_facing_fist_tone4:",
		"category": "people",
		"emoji_order": "1204",
		"shortname_alternates": [":left_fist_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f91b-1f3ff": {
		"code_points": {
			"base": "1f91b-1f3ff",
			"non_fully_qualified": "1f91b-1f3ff",
			"decimal": "&#129307;&#127999;"
		},
		"name": "left facing fist tone 5",
		"shortname": ":left_facing_fist_tone5:",
		"category": "people",
		"emoji_order": "1205",
		"shortname_alternates": [":left_fist_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f91c": {
		"code_points": {
			"base": "1f91c",
			"non_fully_qualified": "1f91c",
			"decimal": "&#129308;"
		},
		"name": "right-facing fist",
		"shortname": ":right_facing_fist:",
		"category": "people",
		"emoji_order": "1206",
		"shortname_alternates": [":right_fist:"],
		"ascii": [],
		"keywords": []
	},
	"1f91c-1f3fb": {
		"code_points": {
			"base": "1f91c-1f3fb",
			"non_fully_qualified": "1f91c-1f3fb",
			"decimal": "&#129308;&#127995;"
		},
		"name": "right facing fist tone 1",
		"shortname": ":right_facing_fist_tone1:",
		"category": "people",
		"emoji_order": "1207",
		"shortname_alternates": [":right_fist_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f91c-1f3fc": {
		"code_points": {
			"base": "1f91c-1f3fc",
			"non_fully_qualified": "1f91c-1f3fc",
			"decimal": "&#129308;&#127996;"
		},
		"name": "right facing fist tone 2",
		"shortname": ":right_facing_fist_tone2:",
		"category": "people",
		"emoji_order": "1208",
		"shortname_alternates": [":right_fist_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f91c-1f3fd": {
		"code_points": {
			"base": "1f91c-1f3fd",
			"non_fully_qualified": "1f91c-1f3fd",
			"decimal": "&#129308;&#127997;"
		},
		"name": "right facing fist tone 3",
		"shortname": ":right_facing_fist_tone3:",
		"category": "people",
		"emoji_order": "1209",
		"shortname_alternates": [":right_fist_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f91c-1f3fe": {
		"code_points": {
			"base": "1f91c-1f3fe",
			"non_fully_qualified": "1f91c-1f3fe",
			"decimal": "&#129308;&#127998;"
		},
		"name": "right facing fist tone 4",
		"shortname": ":right_facing_fist_tone4:",
		"category": "people",
		"emoji_order": "1210",
		"shortname_alternates": [":right_fist_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f91c-1f3ff": {
		"code_points": {
			"base": "1f91c-1f3ff",
			"non_fully_qualified": "1f91c-1f3ff",
			"decimal": "&#129308;&#127999;"
		},
		"name": "right facing fist tone 5",
		"shortname": ":right_facing_fist_tone5:",
		"category": "people",
		"emoji_order": "1211",
		"shortname_alternates": [":right_fist_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f91a": {
		"code_points": {
			"base": "1f91a",
			"non_fully_qualified": "1f91a",
			"decimal": "&#129306;"
		},
		"name": "raised back of hand",
		"shortname": ":raised_back_of_hand:",
		"category": "people",
		"emoji_order": "1212",
		"shortname_alternates": [":back_of_hand:"],
		"ascii": [],
		"keywords": []
	},
	"1f91a-1f3fb": {
		"code_points": {
			"base": "1f91a-1f3fb",
			"non_fully_qualified": "1f91a-1f3fb",
			"decimal": "&#129306;&#127995;"
		},
		"name": "raised back of hand tone 1",
		"shortname": ":raised_back_of_hand_tone1:",
		"category": "people",
		"emoji_order": "1213",
		"shortname_alternates": [":back_of_hand_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f91a-1f3fc": {
		"code_points": {
			"base": "1f91a-1f3fc",
			"non_fully_qualified": "1f91a-1f3fc",
			"decimal": "&#129306;&#127996;"
		},
		"name": "raised back of hand tone 2",
		"shortname": ":raised_back_of_hand_tone2:",
		"category": "people",
		"emoji_order": "1214",
		"shortname_alternates": [":back_of_hand_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f91a-1f3fd": {
		"code_points": {
			"base": "1f91a-1f3fd",
			"non_fully_qualified": "1f91a-1f3fd",
			"decimal": "&#129306;&#127997;"
		},
		"name": "raised back of hand tone 3",
		"shortname": ":raised_back_of_hand_tone3:",
		"category": "people",
		"emoji_order": "1215",
		"shortname_alternates": [":back_of_hand_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f91a-1f3fe": {
		"code_points": {
			"base": "1f91a-1f3fe",
			"non_fully_qualified": "1f91a-1f3fe",
			"decimal": "&#129306;&#127998;"
		},
		"name": "raised back of hand tone 4",
		"shortname": ":raised_back_of_hand_tone4:",
		"category": "people",
		"emoji_order": "1216",
		"shortname_alternates": [":back_of_hand_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f91a-1f3ff": {
		"code_points": {
			"base": "1f91a-1f3ff",
			"non_fully_qualified": "1f91a-1f3ff",
			"decimal": "&#129306;&#127999;"
		},
		"name": "raised back of hand tone 5",
		"shortname": ":raised_back_of_hand_tone5:",
		"category": "people",
		"emoji_order": "1217",
		"shortname_alternates": [":back_of_hand_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f44b": {
		"code_points": {
			"base": "1f44b",
			"non_fully_qualified": "1f44b",
			"decimal": "&#128075;"
		},
		"name": "waving hand sign",
		"shortname": ":wave:",
		"category": "people",
		"emoji_order": "1218",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "diversity"]
	},
	"1f44b-1f3fb": {
		"code_points": {
			"base": "1f44b-1f3fb",
			"non_fully_qualified": "1f44b-1f3fb",
			"decimal": "&#128075;&#127995;"
		},
		"name": "waving hand sign tone 1",
		"shortname": ":wave_tone1:",
		"category": "people",
		"emoji_order": "1219",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44b-1f3fc": {
		"code_points": {
			"base": "1f44b-1f3fc",
			"non_fully_qualified": "1f44b-1f3fc",
			"decimal": "&#128075;&#127996;"
		},
		"name": "waving hand sign tone 2",
		"shortname": ":wave_tone2:",
		"category": "people",
		"emoji_order": "1220",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44b-1f3fd": {
		"code_points": {
			"base": "1f44b-1f3fd",
			"non_fully_qualified": "1f44b-1f3fd",
			"decimal": "&#128075;&#127997;"
		},
		"name": "waving hand sign tone 3",
		"shortname": ":wave_tone3:",
		"category": "people",
		"emoji_order": "1221",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44b-1f3fe": {
		"code_points": {
			"base": "1f44b-1f3fe",
			"non_fully_qualified": "1f44b-1f3fe",
			"decimal": "&#128075;&#127998;"
		},
		"name": "waving hand sign tone 4",
		"shortname": ":wave_tone4:",
		"category": "people",
		"emoji_order": "1222",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44b-1f3ff": {
		"code_points": {
			"base": "1f44b-1f3ff",
			"non_fully_qualified": "1f44b-1f3ff",
			"decimal": "&#128075;&#127999;"
		},
		"name": "waving hand sign tone 5",
		"shortname": ":wave_tone5:",
		"category": "people",
		"emoji_order": "1223",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44f": {
		"code_points": {
			"base": "1f44f",
			"non_fully_qualified": "1f44f",
			"decimal": "&#128079;"
		},
		"name": "clapping hands sign",
		"shortname": ":clap:",
		"category": "people",
		"emoji_order": "1224",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "win", "diversity", "good", "beautiful"]
	},
	"1f44f-1f3fb": {
		"code_points": {
			"base": "1f44f-1f3fb",
			"non_fully_qualified": "1f44f-1f3fb",
			"decimal": "&#128079;&#127995;"
		},
		"name": "clapping hands sign tone 1",
		"shortname": ":clap_tone1:",
		"category": "people",
		"emoji_order": "1225",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44f-1f3fc": {
		"code_points": {
			"base": "1f44f-1f3fc",
			"non_fully_qualified": "1f44f-1f3fc",
			"decimal": "&#128079;&#127996;"
		},
		"name": "clapping hands sign tone 2",
		"shortname": ":clap_tone2:",
		"category": "people",
		"emoji_order": "1226",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44f-1f3fd": {
		"code_points": {
			"base": "1f44f-1f3fd",
			"non_fully_qualified": "1f44f-1f3fd",
			"decimal": "&#128079;&#127997;"
		},
		"name": "clapping hands sign tone 3",
		"shortname": ":clap_tone3:",
		"category": "people",
		"emoji_order": "1227",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44f-1f3fe": {
		"code_points": {
			"base": "1f44f-1f3fe",
			"non_fully_qualified": "1f44f-1f3fe",
			"decimal": "&#128079;&#127998;"
		},
		"name": "clapping hands sign tone 4",
		"shortname": ":clap_tone4:",
		"category": "people",
		"emoji_order": "1228",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f44f-1f3ff": {
		"code_points": {
			"base": "1f44f-1f3ff",
			"non_fully_qualified": "1f44f-1f3ff",
			"decimal": "&#128079;&#127999;"
		},
		"name": "clapping hands sign tone 5",
		"shortname": ":clap_tone5:",
		"category": "people",
		"emoji_order": "1229",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270d": {
		"code_points": {
			"base": "270d",
			"non_fully_qualified": "270d",
			"fully_qualified": "270d-fe0f",
			"decimal": "&#9997;"
		},
		"name": "writing hand",
		"shortname": ":writing_hand:",
		"category": "people",
		"emoji_order": "1230",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "write", "diversity"]
	},
	"270d-1f3fb": {
		"code_points": {
			"base": "270d-1f3fb",
			"non_fully_qualified": "270d-1f3fb",
			"decimal": "&#9997;&#127995;"
		},
		"name": "writing hand tone 1",
		"shortname": ":writing_hand_tone1:",
		"category": "people",
		"emoji_order": "1231",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270d-1f3fc": {
		"code_points": {
			"base": "270d-1f3fc",
			"non_fully_qualified": "270d-1f3fc",
			"decimal": "&#9997;&#127996;"
		},
		"name": "writing hand tone 2",
		"shortname": ":writing_hand_tone2:",
		"category": "people",
		"emoji_order": "1232",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270d-1f3fd": {
		"code_points": {
			"base": "270d-1f3fd",
			"non_fully_qualified": "270d-1f3fd",
			"decimal": "&#9997;&#127997;"
		},
		"name": "writing hand tone 3",
		"shortname": ":writing_hand_tone3:",
		"category": "people",
		"emoji_order": "1233",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270d-1f3fe": {
		"code_points": {
			"base": "270d-1f3fe",
			"non_fully_qualified": "270d-1f3fe",
			"decimal": "&#9997;&#127998;"
		},
		"name": "writing hand tone 4",
		"shortname": ":writing_hand_tone4:",
		"category": "people",
		"emoji_order": "1234",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270d-1f3ff": {
		"code_points": {
			"base": "270d-1f3ff",
			"non_fully_qualified": "270d-1f3ff",
			"decimal": "&#9997;&#127999;"
		},
		"name": "writing hand tone 5",
		"shortname": ":writing_hand_tone5:",
		"category": "people",
		"emoji_order": "1235",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f450": {
		"code_points": {
			"base": "1f450",
			"non_fully_qualified": "1f450",
			"decimal": "&#128080;"
		},
		"name": "open hands sign",
		"shortname": ":open_hands:",
		"category": "people",
		"emoji_order": "1236",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "diversity", "condolence"]
	},
	"1f450-1f3fb": {
		"code_points": {
			"base": "1f450-1f3fb",
			"non_fully_qualified": "1f450-1f3fb",
			"decimal": "&#128080;&#127995;"
		},
		"name": "open hands sign tone 1",
		"shortname": ":open_hands_tone1:",
		"category": "people",
		"emoji_order": "1237",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f450-1f3fc": {
		"code_points": {
			"base": "1f450-1f3fc",
			"non_fully_qualified": "1f450-1f3fc",
			"decimal": "&#128080;&#127996;"
		},
		"name": "open hands sign tone 2",
		"shortname": ":open_hands_tone2:",
		"category": "people",
		"emoji_order": "1238",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f450-1f3fd": {
		"code_points": {
			"base": "1f450-1f3fd",
			"non_fully_qualified": "1f450-1f3fd",
			"decimal": "&#128080;&#127997;"
		},
		"name": "open hands sign tone 3",
		"shortname": ":open_hands_tone3:",
		"category": "people",
		"emoji_order": "1239",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f450-1f3fe": {
		"code_points": {
			"base": "1f450-1f3fe",
			"non_fully_qualified": "1f450-1f3fe",
			"decimal": "&#128080;&#127998;"
		},
		"name": "open hands sign tone 4",
		"shortname": ":open_hands_tone4:",
		"category": "people",
		"emoji_order": "1240",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f450-1f3ff": {
		"code_points": {
			"base": "1f450-1f3ff",
			"non_fully_qualified": "1f450-1f3ff",
			"decimal": "&#128080;&#127999;"
		},
		"name": "open hands sign tone 5",
		"shortname": ":open_hands_tone5:",
		"category": "people",
		"emoji_order": "1241",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64c": {
		"code_points": {
			"base": "1f64c",
			"non_fully_qualified": "1f64c",
			"decimal": "&#128588;"
		},
		"name": "person raising both hands in celebration",
		"shortname": ":raised_hands:",
		"category": "people",
		"emoji_order": "1242",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "diversity", "perfect", "good", "parties"]
	},
	"1f64c-1f3fb": {
		"code_points": {
			"base": "1f64c-1f3fb",
			"non_fully_qualified": "1f64c-1f3fb",
			"decimal": "&#128588;&#127995;"
		},
		"name": "person raising both hands in celebration tone 1",
		"shortname": ":raised_hands_tone1:",
		"category": "people",
		"emoji_order": "1243",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64c-1f3fc": {
		"code_points": {
			"base": "1f64c-1f3fc",
			"non_fully_qualified": "1f64c-1f3fc",
			"decimal": "&#128588;&#127996;"
		},
		"name": "person raising both hands in celebration tone 2",
		"shortname": ":raised_hands_tone2:",
		"category": "people",
		"emoji_order": "1244",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64c-1f3fd": {
		"code_points": {
			"base": "1f64c-1f3fd",
			"non_fully_qualified": "1f64c-1f3fd",
			"decimal": "&#128588;&#127997;"
		},
		"name": "person raising both hands in celebration tone 3",
		"shortname": ":raised_hands_tone3:",
		"category": "people",
		"emoji_order": "1245",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64c-1f3fe": {
		"code_points": {
			"base": "1f64c-1f3fe",
			"non_fully_qualified": "1f64c-1f3fe",
			"decimal": "&#128588;&#127998;"
		},
		"name": "person raising both hands in celebration tone 4",
		"shortname": ":raised_hands_tone4:",
		"category": "people",
		"emoji_order": "1246",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64c-1f3ff": {
		"code_points": {
			"base": "1f64c-1f3ff",
			"non_fully_qualified": "1f64c-1f3ff",
			"decimal": "&#128588;&#127999;"
		},
		"name": "person raising both hands in celebration tone 5",
		"shortname": ":raised_hands_tone5:",
		"category": "people",
		"emoji_order": "1247",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64f": {
		"code_points": {
			"base": "1f64f",
			"non_fully_qualified": "1f64f",
			"decimal": "&#128591;"
		},
		"name": "person with folded hands",
		"shortname": ":pray:",
		"category": "people",
		"emoji_order": "1248",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "hands", "hi", "luck", "thank you", "pray", "diversity", "scientology"]
	},
	"1f64f-1f3fb": {
		"code_points": {
			"base": "1f64f-1f3fb",
			"non_fully_qualified": "1f64f-1f3fb",
			"decimal": "&#128591;&#127995;"
		},
		"name": "person with folded hands tone 1",
		"shortname": ":pray_tone1:",
		"category": "people",
		"emoji_order": "1249",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64f-1f3fc": {
		"code_points": {
			"base": "1f64f-1f3fc",
			"non_fully_qualified": "1f64f-1f3fc",
			"decimal": "&#128591;&#127996;"
		},
		"name": "person with folded hands tone 2",
		"shortname": ":pray_tone2:",
		"category": "people",
		"emoji_order": "1250",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64f-1f3fd": {
		"code_points": {
			"base": "1f64f-1f3fd",
			"non_fully_qualified": "1f64f-1f3fd",
			"decimal": "&#128591;&#127997;"
		},
		"name": "person with folded hands tone 3",
		"shortname": ":pray_tone3:",
		"category": "people",
		"emoji_order": "1251",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64f-1f3fe": {
		"code_points": {
			"base": "1f64f-1f3fe",
			"non_fully_qualified": "1f64f-1f3fe",
			"decimal": "&#128591;&#127998;"
		},
		"name": "person with folded hands tone 4",
		"shortname": ":pray_tone4:",
		"category": "people",
		"emoji_order": "1252",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f64f-1f3ff": {
		"code_points": {
			"base": "1f64f-1f3ff",
			"non_fully_qualified": "1f64f-1f3ff",
			"decimal": "&#128591;&#127999;"
		},
		"name": "person with folded hands tone 5",
		"shortname": ":pray_tone5:",
		"category": "people",
		"emoji_order": "1253",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f91d": {
		"code_points": {
			"base": "1f91d",
			"non_fully_qualified": "1f91d",
			"decimal": "&#129309;"
		},
		"name": "handshake",
		"shortname": ":handshake:",
		"category": "people",
		"emoji_order": "1254",
		"shortname_alternates": [":shaking_hands:"],
		"ascii": [],
		"keywords": []
	},
	"1f91d-1f3fb": {
		"code_points": {
			"base": "1f91d-1f3fb",
			"non_fully_qualified": "1f91d-1f3fb",
			"decimal": "&#129309;&#127995;"
		},
		"name": "handshake tone 1",
		"shortname": ":handshake_tone1:",
		"category": "people",
		"emoji_order": "1255",
		"shortname_alternates": [":shaking_hands_tone1:"],
		"ascii": [],
		"keywords": []
	},
	"1f91d-1f3fc": {
		"code_points": {
			"base": "1f91d-1f3fc",
			"non_fully_qualified": "1f91d-1f3fc",
			"decimal": "&#129309;&#127996;"
		},
		"name": "handshake tone 2",
		"shortname": ":handshake_tone2:",
		"category": "people",
		"emoji_order": "1256",
		"shortname_alternates": [":shaking_hands_tone2:"],
		"ascii": [],
		"keywords": []
	},
	"1f91d-1f3fd": {
		"code_points": {
			"base": "1f91d-1f3fd",
			"non_fully_qualified": "1f91d-1f3fd",
			"decimal": "&#129309;&#127997;"
		},
		"name": "handshake tone 3",
		"shortname": ":handshake_tone3:",
		"category": "people",
		"emoji_order": "1257",
		"shortname_alternates": [":shaking_hands_tone3:"],
		"ascii": [],
		"keywords": []
	},
	"1f91d-1f3fe": {
		"code_points": {
			"base": "1f91d-1f3fe",
			"non_fully_qualified": "1f91d-1f3fe",
			"decimal": "&#129309;&#127998;"
		},
		"name": "handshake tone 4",
		"shortname": ":handshake_tone4:",
		"category": "people",
		"emoji_order": "1258",
		"shortname_alternates": [":shaking_hands_tone4:"],
		"ascii": [],
		"keywords": []
	},
	"1f91d-1f3ff": {
		"code_points": {
			"base": "1f91d-1f3ff",
			"non_fully_qualified": "1f91d-1f3ff",
			"decimal": "&#129309;&#127999;"
		},
		"name": "handshake tone 5",
		"shortname": ":handshake_tone5:",
		"category": "people",
		"emoji_order": "1259",
		"shortname_alternates": [":shaking_hands_tone5:"],
		"ascii": [],
		"keywords": []
	},
	"1f485": {
		"code_points": {
			"base": "1f485",
			"non_fully_qualified": "1f485",
			"decimal": "&#128133;"
		},
		"name": "nail polish",
		"shortname": ":nail_care:",
		"category": "people",
		"emoji_order": "1260",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["women", "body", "hands", "nailpolish", "diversity", "girls night"]
	},
	"1f485-1f3fb": {
		"code_points": {
			"base": "1f485-1f3fb",
			"non_fully_qualified": "1f485-1f3fb",
			"decimal": "&#128133;&#127995;"
		},
		"name": "nail polish tone 1",
		"shortname": ":nail_care_tone1:",
		"category": "people",
		"emoji_order": "1261",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f485-1f3fc": {
		"code_points": {
			"base": "1f485-1f3fc",
			"non_fully_qualified": "1f485-1f3fc",
			"decimal": "&#128133;&#127996;"
		},
		"name": "nail polish tone 2",
		"shortname": ":nail_care_tone2:",
		"category": "people",
		"emoji_order": "1262",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f485-1f3fd": {
		"code_points": {
			"base": "1f485-1f3fd",
			"non_fully_qualified": "1f485-1f3fd",
			"decimal": "&#128133;&#127997;"
		},
		"name": "nail polish tone 3",
		"shortname": ":nail_care_tone3:",
		"category": "people",
		"emoji_order": "1263",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f485-1f3fe": {
		"code_points": {
			"base": "1f485-1f3fe",
			"non_fully_qualified": "1f485-1f3fe",
			"decimal": "&#128133;&#127998;"
		},
		"name": "nail polish tone 4",
		"shortname": ":nail_care_tone4:",
		"category": "people",
		"emoji_order": "1264",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f485-1f3ff": {
		"code_points": {
			"base": "1f485-1f3ff",
			"non_fully_qualified": "1f485-1f3ff",
			"decimal": "&#128133;&#127999;"
		},
		"name": "nail polish tone 5",
		"shortname": ":nail_care_tone5:",
		"category": "people",
		"emoji_order": "1265",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f442": {
		"code_points": {
			"base": "1f442",
			"non_fully_qualified": "1f442",
			"decimal": "&#128066;"
		},
		"name": "ear",
		"shortname": ":ear:",
		"category": "people",
		"emoji_order": "1266",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "diversity"]
	},
	"1f442-1f3fb": {
		"code_points": {
			"base": "1f442-1f3fb",
			"non_fully_qualified": "1f442-1f3fb",
			"decimal": "&#128066;&#127995;"
		},
		"name": "ear tone 1",
		"shortname": ":ear_tone1:",
		"category": "people",
		"emoji_order": "1267",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f442-1f3fc": {
		"code_points": {
			"base": "1f442-1f3fc",
			"non_fully_qualified": "1f442-1f3fc",
			"decimal": "&#128066;&#127996;"
		},
		"name": "ear tone 2",
		"shortname": ":ear_tone2:",
		"category": "people",
		"emoji_order": "1268",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f442-1f3fd": {
		"code_points": {
			"base": "1f442-1f3fd",
			"non_fully_qualified": "1f442-1f3fd",
			"decimal": "&#128066;&#127997;"
		},
		"name": "ear tone 3",
		"shortname": ":ear_tone3:",
		"category": "people",
		"emoji_order": "1269",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f442-1f3fe": {
		"code_points": {
			"base": "1f442-1f3fe",
			"non_fully_qualified": "1f442-1f3fe",
			"decimal": "&#128066;&#127998;"
		},
		"name": "ear tone 4",
		"shortname": ":ear_tone4:",
		"category": "people",
		"emoji_order": "1270",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f442-1f3ff": {
		"code_points": {
			"base": "1f442-1f3ff",
			"non_fully_qualified": "1f442-1f3ff",
			"decimal": "&#128066;&#127999;"
		},
		"name": "ear tone 5",
		"shortname": ":ear_tone5:",
		"category": "people",
		"emoji_order": "1271",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f443": {
		"code_points": {
			"base": "1f443",
			"non_fully_qualified": "1f443",
			"decimal": "&#128067;"
		},
		"name": "nose",
		"shortname": ":nose:",
		"category": "people",
		"emoji_order": "1272",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "diversity"]
	},
	"1f443-1f3fb": {
		"code_points": {
			"base": "1f443-1f3fb",
			"non_fully_qualified": "1f443-1f3fb",
			"decimal": "&#128067;&#127995;"
		},
		"name": "nose tone 1",
		"shortname": ":nose_tone1:",
		"category": "people",
		"emoji_order": "1273",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f443-1f3fc": {
		"code_points": {
			"base": "1f443-1f3fc",
			"non_fully_qualified": "1f443-1f3fc",
			"decimal": "&#128067;&#127996;"
		},
		"name": "nose tone 2",
		"shortname": ":nose_tone2:",
		"category": "people",
		"emoji_order": "1274",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f443-1f3fd": {
		"code_points": {
			"base": "1f443-1f3fd",
			"non_fully_qualified": "1f443-1f3fd",
			"decimal": "&#128067;&#127997;"
		},
		"name": "nose tone 3",
		"shortname": ":nose_tone3:",
		"category": "people",
		"emoji_order": "1275",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f443-1f3fe": {
		"code_points": {
			"base": "1f443-1f3fe",
			"non_fully_qualified": "1f443-1f3fe",
			"decimal": "&#128067;&#127998;"
		},
		"name": "nose tone 4",
		"shortname": ":nose_tone4:",
		"category": "people",
		"emoji_order": "1276",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f443-1f3ff": {
		"code_points": {
			"base": "1f443-1f3ff",
			"non_fully_qualified": "1f443-1f3ff",
			"decimal": "&#128067;&#127999;"
		},
		"name": "nose tone 5",
		"shortname": ":nose_tone5:",
		"category": "people",
		"emoji_order": "1277",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f463": {
		"code_points": {
			"base": "1f463",
			"non_fully_qualified": "1f463",
			"decimal": "&#128099;"
		},
		"name": "footprints",
		"shortname": ":footprints:",
		"category": "people",
		"emoji_order": "1278",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f440": {
		"code_points": {
			"base": "1f440",
			"non_fully_qualified": "1f440",
			"decimal": "&#128064;"
		},
		"name": "eyes",
		"shortname": ":eyes:",
		"category": "people",
		"emoji_order": "1279",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "eyes"]
	},
	"1f441": {
		"code_points": {
			"base": "1f441",
			"non_fully_qualified": "1f441",
			"fully_qualified": "1f441-fe0f",
			"decimal": "&#128065;"
		},
		"name": "eye",
		"shortname": ":eye:",
		"category": "people",
		"emoji_order": "1280",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "eyes"]
	},
	"1f441-1f5e8": {
		"code_points": {
			"base": "1f441-1f5e8",
			"non_fully_qualified": "1f441-1f5e8",
			"fully_qualified": "1f441-200d-1f5e8",
			"decimal": "&#128065;&#128488;"
		},
		"name": "eye in speech bubble",
		"shortname": ":eye_in_speech_bubble:",
		"category": "symbols",
		"emoji_order": "1281",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "symbol", "eyes", "talk"]
	},
	"1f445": {
		"code_points": {
			"base": "1f445",
			"non_fully_qualified": "1f445",
			"decimal": "&#128069;"
		},
		"name": "tongue",
		"shortname": ":tongue:",
		"category": "people",
		"emoji_order": "1282",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["body", "sexy", "lip"]
	},
	"1f444": {
		"code_points": {
			"base": "1f444",
			"non_fully_qualified": "1f444",
			"decimal": "&#128068;"
		},
		"name": "mouth",
		"shortname": ":lips:",
		"category": "people",
		"emoji_order": "1283",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["women", "body", "sexy", "lip"]
	},
	"1f48b": {
		"code_points": {
			"base": "1f48b",
			"non_fully_qualified": "1f48b",
			"decimal": "&#128139;"
		},
		"name": "kiss mark",
		"shortname": ":kiss:",
		"category": "people",
		"emoji_order": "1284",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["women", "love", "sexy", "lip", "beautiful", "girls night"]
	},
	"1f498": {
		"code_points": {
			"base": "1f498",
			"non_fully_qualified": "1f498",
			"decimal": "&#128152;"
		},
		"name": "heart with arrow",
		"shortname": ":cupid:",
		"category": "symbols",
		"emoji_order": "1285",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"2764": {
		"code_points": {
			"base": "2764",
			"non_fully_qualified": "2764",
			"fully_qualified": "2764-fe0f",
			"decimal": "&#10084;"
		},
		"name": "heavy black heart",
		"shortname": ":heart:",
		"category": "symbols",
		"emoji_order": "1286",
		"shortname_alternates": [],
		"ascii": ["<3"],
		"keywords": ["love", "symbol", "parties"]
	},
	"1f493": {
		"code_points": {
			"base": "1f493",
			"non_fully_qualified": "1f493",
			"decimal": "&#128147;"
		},
		"name": "beating heart",
		"shortname": ":heartbeat:",
		"category": "symbols",
		"emoji_order": "1287",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"1f494": {
		"code_points": {
			"base": "1f494",
			"non_fully_qualified": "1f494",
			"decimal": "&#128148;"
		},
		"name": "broken heart",
		"shortname": ":broken_heart:",
		"category": "symbols",
		"emoji_order": "1288",
		"shortname_alternates": [],
		"ascii": ["<\/3"],
		"keywords": ["love", "symbol", "heartbreak"]
	},
	"1f495": {
		"code_points": {
			"base": "1f495",
			"non_fully_qualified": "1f495",
			"decimal": "&#128149;"
		},
		"name": "two hearts",
		"shortname": ":two_hearts:",
		"category": "symbols",
		"emoji_order": "1289",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"1f496": {
		"code_points": {
			"base": "1f496",
			"non_fully_qualified": "1f496",
			"decimal": "&#128150;"
		},
		"name": "sparkling heart",
		"shortname": ":sparkling_heart:",
		"category": "symbols",
		"emoji_order": "1290",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol", "girls night"]
	},
	"1f497": {
		"code_points": {
			"base": "1f497",
			"non_fully_qualified": "1f497",
			"decimal": "&#128151;"
		},
		"name": "growing heart",
		"shortname": ":heartpulse:",
		"category": "symbols",
		"emoji_order": "1291",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"1f499": {
		"code_points": {
			"base": "1f499",
			"non_fully_qualified": "1f499",
			"decimal": "&#128153;"
		},
		"name": "blue heart",
		"shortname": ":blue_heart:",
		"category": "symbols",
		"emoji_order": "1292",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"1f49a": {
		"code_points": {
			"base": "1f49a",
			"non_fully_qualified": "1f49a",
			"decimal": "&#128154;"
		},
		"name": "green heart",
		"shortname": ":green_heart:",
		"category": "symbols",
		"emoji_order": "1293",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"1f49b": {
		"code_points": {
			"base": "1f49b",
			"non_fully_qualified": "1f49b",
			"decimal": "&#128155;"
		},
		"name": "yellow heart",
		"shortname": ":yellow_heart:",
		"category": "symbols",
		"emoji_order": "1294",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"1f49c": {
		"code_points": {
			"base": "1f49c",
			"non_fully_qualified": "1f49c",
			"decimal": "&#128156;"
		},
		"name": "purple heart",
		"shortname": ":purple_heart:",
		"category": "symbols",
		"emoji_order": "1295",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"1f5a4": {
		"code_points": {
			"base": "1f5a4",
			"non_fully_qualified": "1f5a4",
			"decimal": "&#128420;"
		},
		"name": "black heart",
		"shortname": ":black_heart:",
		"category": "symbols",
		"emoji_order": "1296",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f49d": {
		"code_points": {
			"base": "1f49d",
			"non_fully_qualified": "1f49d",
			"decimal": "&#128157;"
		},
		"name": "heart with ribbon",
		"shortname": ":gift_heart:",
		"category": "symbols",
		"emoji_order": "1297",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol", "condolence"]
	},
	"1f49e": {
		"code_points": {
			"base": "1f49e",
			"non_fully_qualified": "1f49e",
			"decimal": "&#128158;"
		},
		"name": "revolving hearts",
		"shortname": ":revolving_hearts:",
		"category": "symbols",
		"emoji_order": "1298",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"1f49f": {
		"code_points": {
			"base": "1f49f",
			"non_fully_qualified": "1f49f",
			"decimal": "&#128159;"
		},
		"name": "heart decoration",
		"shortname": ":heart_decoration:",
		"category": "symbols",
		"emoji_order": "1299",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"2763": {
		"code_points": {
			"base": "2763",
			"non_fully_qualified": "2763",
			"fully_qualified": "2763-fe0f",
			"decimal": "&#10083;"
		},
		"name": "heavy heart exclamation mark ornament",
		"shortname": ":heart_exclamation:",
		"category": "symbols",
		"emoji_order": "1300",
		"shortname_alternates": [":heavy_heart_exclamation_mark_ornament:"],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"1f48c": {
		"code_points": {
			"base": "1f48c",
			"non_fully_qualified": "1f48c",
			"decimal": "&#128140;"
		},
		"name": "love letter",
		"shortname": ":love_letter:",
		"category": "objects",
		"emoji_order": "1301",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f4a4": {
		"code_points": {
			"base": "1f4a4",
			"non_fully_qualified": "1f4a4",
			"decimal": "&#128164;"
		},
		"name": "sleeping symbol",
		"shortname": ":zzz:",
		"category": "people",
		"emoji_order": "1302",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["tired", "goodnight"]
	},
	"1f4a2": {
		"code_points": {
			"base": "1f4a2",
			"non_fully_qualified": "1f4a2",
			"decimal": "&#128162;"
		},
		"name": "anger symbol",
		"shortname": ":anger:",
		"category": "symbols",
		"emoji_order": "1303",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f4a3": {
		"code_points": {
			"base": "1f4a3",
			"non_fully_qualified": "1f4a3",
			"decimal": "&#128163;"
		},
		"name": "bomb",
		"shortname": ":bomb:",
		"category": "objects",
		"emoji_order": "1304",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "weapon", "dead", "blast"]
	},
	"1f4a5": {
		"code_points": {
			"base": "1f4a5",
			"non_fully_qualified": "1f4a5",
			"decimal": "&#128165;"
		},
		"name": "collision symbol",
		"shortname": ":boom:",
		"category": "symbols",
		"emoji_order": "1305",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "blast"]
	},
	"1f4a6": {
		"code_points": {
			"base": "1f4a6",
			"non_fully_qualified": "1f4a6",
			"decimal": "&#128166;"
		},
		"name": "splashing sweat symbol",
		"shortname": ":sweat_drops:",
		"category": "nature",
		"emoji_order": "1306",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["rain", "stressed", "sweat"]
	},
	"1f4a8": {
		"code_points": {
			"base": "1f4a8",
			"non_fully_qualified": "1f4a8",
			"decimal": "&#128168;"
		},
		"name": "dash symbol",
		"shortname": ":dash:",
		"category": "nature",
		"emoji_order": "1307",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["cloud", "cold", "smoking"]
	},
	"1f4ab": {
		"code_points": {
			"base": "1f4ab",
			"non_fully_qualified": "1f4ab",
			"decimal": "&#128171;"
		},
		"name": "dizzy symbol",
		"shortname": ":dizzy:",
		"category": "symbols",
		"emoji_order": "1308",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["star", "symbol"]
	},
	"1f4ac": {
		"code_points": {
			"base": "1f4ac",
			"non_fully_qualified": "1f4ac",
			"decimal": "&#128172;"
		},
		"name": "speech balloon",
		"shortname": ":speech_balloon:",
		"category": "symbols",
		"emoji_order": "1309",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "free speech"]
	},
	"1f5e8": {
		"code_points": {
			"base": "1f5e8",
			"non_fully_qualified": "1f5e8",
			"fully_qualified": "1f5e8-fe0f",
			"decimal": "&#128488;"
		},
		"name": "left speech bubble",
		"shortname": ":speech_left:",
		"category": "symbols",
		"emoji_order": "1310",
		"shortname_alternates": [":left_speech_bubble:"],
		"ascii": [],
		"keywords": []
	},
	"1f5ef": {
		"code_points": {
			"base": "1f5ef",
			"non_fully_qualified": "1f5ef",
			"fully_qualified": "1f5ef-fe0f",
			"decimal": "&#128495;"
		},
		"name": "right anger bubble",
		"shortname": ":anger_right:",
		"category": "symbols",
		"emoji_order": "1311",
		"shortname_alternates": [":right_anger_bubble:"],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f4ad": {
		"code_points": {
			"base": "1f4ad",
			"non_fully_qualified": "1f4ad",
			"decimal": "&#128173;"
		},
		"name": "thought balloon",
		"shortname": ":thought_balloon:",
		"category": "symbols",
		"emoji_order": "1312",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f573": {
		"code_points": {
			"base": "1f573",
			"non_fully_qualified": "1f573",
			"fully_qualified": "1f573-fe0f",
			"decimal": "&#128371;"
		},
		"name": "hole",
		"shortname": ":hole:",
		"category": "objects",
		"emoji_order": "1313",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f453": {
		"code_points": {
			"base": "1f453",
			"non_fully_qualified": "1f453",
			"decimal": "&#128083;"
		},
		"name": "eyeglasses",
		"shortname": ":eyeglasses:",
		"category": "people",
		"emoji_order": "1314",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fashion", "glasses", "accessories"]
	},
	"1f576": {
		"code_points": {
			"base": "1f576",
			"non_fully_qualified": "1f576",
			"fully_qualified": "1f576-fe0f",
			"decimal": "&#128374;"
		},
		"name": "dark sunglasses",
		"shortname": ":dark_sunglasses:",
		"category": "people",
		"emoji_order": "1315",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fashion", "glasses", "accessories"]
	},
	"1f454": {
		"code_points": {
			"base": "1f454",
			"non_fully_qualified": "1f454",
			"decimal": "&#128084;"
		},
		"name": "necktie",
		"shortname": ":necktie:",
		"category": "people",
		"emoji_order": "1316",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fashion"]
	},
	"1f455": {
		"code_points": {
			"base": "1f455",
			"non_fully_qualified": "1f455",
			"decimal": "&#128085;"
		},
		"name": "t-shirt",
		"shortname": ":shirt:",
		"category": "people",
		"emoji_order": "1317",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fashion"]
	},
	"1f456": {
		"code_points": {
			"base": "1f456",
			"non_fully_qualified": "1f456",
			"decimal": "&#128086;"
		},
		"name": "jeans",
		"shortname": ":jeans:",
		"category": "people",
		"emoji_order": "1318",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fashion"]
	},
	"1f457": {
		"code_points": {
			"base": "1f457",
			"non_fully_qualified": "1f457",
			"decimal": "&#128087;"
		},
		"name": "dress",
		"shortname": ":dress:",
		"category": "people",
		"emoji_order": "1319",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["women", "fashion", "sexy", "girls night"]
	},
	"1f458": {
		"code_points": {
			"base": "1f458",
			"non_fully_qualified": "1f458",
			"decimal": "&#128088;"
		},
		"name": "kimono",
		"shortname": ":kimono:",
		"category": "people",
		"emoji_order": "1320",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fashion"]
	},
	"1f459": {
		"code_points": {
			"base": "1f459",
			"non_fully_qualified": "1f459",
			"decimal": "&#128089;"
		},
		"name": "bikini",
		"shortname": ":bikini:",
		"category": "people",
		"emoji_order": "1321",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["women", "fashion", "sexy", "vacation", "tropical", "swim"]
	},
	"1f45a": {
		"code_points": {
			"base": "1f45a",
			"non_fully_qualified": "1f45a",
			"decimal": "&#128090;"
		},
		"name": "womans clothes",
		"shortname": ":womans_clothes:",
		"category": "people",
		"emoji_order": "1322",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["women", "fashion"]
	},
	"1f45b": {
		"code_points": {
			"base": "1f45b",
			"non_fully_qualified": "1f45b",
			"decimal": "&#128091;"
		},
		"name": "purse",
		"shortname": ":purse:",
		"category": "people",
		"emoji_order": "1323",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["bag", "women", "fashion", "accessories", "money"]
	},
	"1f45c": {
		"code_points": {
			"base": "1f45c",
			"non_fully_qualified": "1f45c",
			"decimal": "&#128092;"
		},
		"name": "handbag",
		"shortname": ":handbag:",
		"category": "people",
		"emoji_order": "1324",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["bag", "women", "fashion", "vacation", "accessories"]
	},
	"1f45d": {
		"code_points": {
			"base": "1f45d",
			"non_fully_qualified": "1f45d",
			"decimal": "&#128093;"
		},
		"name": "pouch",
		"shortname": ":pouch:",
		"category": "people",
		"emoji_order": "1325",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["bag", "women", "fashion", "accessories"]
	},
	"1f6cd": {
		"code_points": {
			"base": "1f6cd",
			"non_fully_qualified": "1f6cd",
			"fully_qualified": "1f6cd-fe0f",
			"decimal": "&#128717;"
		},
		"name": "shopping bags",
		"shortname": ":shopping_bags:",
		"category": "objects",
		"emoji_order": "1326",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "birthday", "parties"]
	},
	"1f392": {
		"code_points": {
			"base": "1f392",
			"non_fully_qualified": "1f392",
			"decimal": "&#127890;"
		},
		"name": "school satchel",
		"shortname": ":school_satchel:",
		"category": "people",
		"emoji_order": "1327",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["bag", "fashion", "office", "vacation", "accessories"]
	},
	"1f45e": {
		"code_points": {
			"base": "1f45e",
			"non_fully_qualified": "1f45e",
			"decimal": "&#128094;"
		},
		"name": "mans shoe",
		"shortname": ":mans_shoe:",
		"category": "people",
		"emoji_order": "1328",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fashion", "shoe", "accessories"]
	},
	"1f45f": {
		"code_points": {
			"base": "1f45f",
			"non_fully_qualified": "1f45f",
			"decimal": "&#128095;"
		},
		"name": "athletic shoe",
		"shortname": ":athletic_shoe:",
		"category": "people",
		"emoji_order": "1329",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fashion", "shoe", "accessories", "boys night"]
	},
	"1f460": {
		"code_points": {
			"base": "1f460",
			"non_fully_qualified": "1f460",
			"decimal": "&#128096;"
		},
		"name": "high-heeled shoe",
		"shortname": ":high_heel:",
		"category": "people",
		"emoji_order": "1330",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["women", "fashion", "shoe", "sexy", "accessories", "girls night"]
	},
	"1f461": {
		"code_points": {
			"base": "1f461",
			"non_fully_qualified": "1f461",
			"decimal": "&#128097;"
		},
		"name": "womans sandal",
		"shortname": ":sandal:",
		"category": "people",
		"emoji_order": "1331",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fashion", "shoe", "accessories"]
	},
	"1f462": {
		"code_points": {
			"base": "1f462",
			"non_fully_qualified": "1f462",
			"decimal": "&#128098;"
		},
		"name": "womans boots",
		"shortname": ":boot:",
		"category": "people",
		"emoji_order": "1332",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["women", "fashion", "shoe", "sexy", "accessories"]
	},
	"1f451": {
		"code_points": {
			"base": "1f451",
			"non_fully_qualified": "1f451",
			"decimal": "&#128081;"
		},
		"name": "crown",
		"shortname": ":crown:",
		"category": "people",
		"emoji_order": "1333",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "gem", "accessories"]
	},
	"1f452": {
		"code_points": {
			"base": "1f452",
			"non_fully_qualified": "1f452",
			"decimal": "&#128082;"
		},
		"name": "womans hat",
		"shortname": ":womans_hat:",
		"category": "people",
		"emoji_order": "1334",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["women", "fashion", "accessories"]
	},
	"1f3a9": {
		"code_points": {
			"base": "1f3a9",
			"non_fully_qualified": "1f3a9",
			"decimal": "&#127913;"
		},
		"name": "top hat",
		"shortname": ":tophat:",
		"category": "people",
		"emoji_order": "1335",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["hat", "fashion", "accessories"]
	},
	"1f393": {
		"code_points": {
			"base": "1f393",
			"non_fully_qualified": "1f393",
			"decimal": "&#127891;"
		},
		"name": "graduation cap",
		"shortname": ":mortar_board:",
		"category": "people",
		"emoji_order": "1336",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["hat", "office", "accessories"]
	},
	"26d1": {
		"code_points": {
			"base": "26d1",
			"non_fully_qualified": "26d1",
			"fully_qualified": "26d1-fe0f",
			"decimal": "&#9937;"
		},
		"name": "helmet with white cross",
		"shortname": ":helmet_with_cross:",
		"category": "people",
		"emoji_order": "1337",
		"shortname_alternates": [":helmet_with_white_cross:"],
		"ascii": [],
		"keywords": ["object", "hat", "accessories", "job"]
	},
	"1f4ff": {
		"code_points": {
			"base": "1f4ff",
			"non_fully_qualified": "1f4ff",
			"decimal": "&#128255;"
		},
		"name": "prayer beads",
		"shortname": ":prayer_beads:",
		"category": "objects",
		"emoji_order": "1338",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "rosary"]
	},
	"1f484": {
		"code_points": {
			"base": "1f484",
			"non_fully_qualified": "1f484",
			"decimal": "&#128132;"
		},
		"name": "lipstick",
		"shortname": ":lipstick:",
		"category": "people",
		"emoji_order": "1339",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "women", "fashion", "sexy", "lip"]
	},
	"1f48d": {
		"code_points": {
			"base": "1f48d",
			"non_fully_qualified": "1f48d",
			"decimal": "&#128141;"
		},
		"name": "ring",
		"shortname": ":ring:",
		"category": "people",
		"emoji_order": "1340",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wedding", "object", "fashion", "gem", "accessories"]
	},
	"1f48e": {
		"code_points": {
			"base": "1f48e",
			"non_fully_qualified": "1f48e",
			"decimal": "&#128142;"
		},
		"name": "gem stone",
		"shortname": ":gem:",
		"category": "objects",
		"emoji_order": "1341",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "gem"]
	},
	"1f435": {
		"code_points": {
			"base": "1f435",
			"non_fully_qualified": "1f435",
			"decimal": "&#128053;"
		},
		"name": "monkey face",
		"shortname": ":monkey_face:",
		"category": "nature",
		"emoji_order": "1342",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f412": {
		"code_points": {
			"base": "1f412",
			"non_fully_qualified": "1f412",
			"decimal": "&#128018;"
		},
		"name": "monkey",
		"shortname": ":monkey:",
		"category": "nature",
		"emoji_order": "1343",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f98d": {
		"code_points": {
			"base": "1f98d",
			"non_fully_qualified": "1f98d",
			"decimal": "&#129421;"
		},
		"name": "gorilla",
		"shortname": ":gorilla:",
		"category": "nature",
		"emoji_order": "1344",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f436": {
		"code_points": {
			"base": "1f436",
			"non_fully_qualified": "1f436",
			"decimal": "&#128054;"
		},
		"name": "dog face",
		"shortname": ":dog:",
		"category": "nature",
		"emoji_order": "1345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["dog", "pug", "animal"]
	},
	"1f415": {
		"code_points": {
			"base": "1f415",
			"non_fully_qualified": "1f415",
			"decimal": "&#128021;"
		},
		"name": "dog",
		"shortname": ":dog2:",
		"category": "nature",
		"emoji_order": "1346",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["dog", "pug", "animal"]
	},
	"1f429": {
		"code_points": {
			"base": "1f429",
			"non_fully_qualified": "1f429",
			"decimal": "&#128041;"
		},
		"name": "poodle",
		"shortname": ":poodle:",
		"category": "nature",
		"emoji_order": "1347",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["dog", "animal"]
	},
	"1f43a": {
		"code_points": {
			"base": "1f43a",
			"non_fully_qualified": "1f43a",
			"decimal": "&#128058;"
		},
		"name": "wolf face",
		"shortname": ":wolf:",
		"category": "nature",
		"emoji_order": "1348",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "roar", "animal"]
	},
	"1f98a": {
		"code_points": {
			"base": "1f98a",
			"non_fully_qualified": "1f98a",
			"decimal": "&#129418;"
		},
		"name": "fox face",
		"shortname": ":fox:",
		"category": "nature",
		"emoji_order": "1349",
		"shortname_alternates": [":fox_face:"],
		"ascii": [],
		"keywords": []
	},
	"1f431": {
		"code_points": {
			"base": "1f431",
			"non_fully_qualified": "1f431",
			"decimal": "&#128049;"
		},
		"name": "cat face",
		"shortname": ":cat:",
		"category": "nature",
		"emoji_order": "1350",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["halloween", "vagina", "cat", "animal"]
	},
	"1f408": {
		"code_points": {
			"base": "1f408",
			"non_fully_qualified": "1f408",
			"decimal": "&#128008;"
		},
		"name": "cat",
		"shortname": ":cat2:",
		"category": "nature",
		"emoji_order": "1351",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["halloween", "cat", "animal"]
	},
	"1f981": {
		"code_points": {
			"base": "1f981",
			"non_fully_qualified": "1f981",
			"decimal": "&#129409;"
		},
		"name": "lion face",
		"shortname": ":lion_face:",
		"category": "nature",
		"emoji_order": "1352",
		"shortname_alternates": [":lion:"],
		"ascii": [],
		"keywords": ["wildlife", "roar", "cat", "animal"]
	},
	"1f42f": {
		"code_points": {
			"base": "1f42f",
			"non_fully_qualified": "1f42f",
			"decimal": "&#128047;"
		},
		"name": "tiger face",
		"shortname": ":tiger:",
		"category": "nature",
		"emoji_order": "1353",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "roar", "cat", "animal"]
	},
	"1f405": {
		"code_points": {
			"base": "1f405",
			"non_fully_qualified": "1f405",
			"decimal": "&#128005;"
		},
		"name": "tiger",
		"shortname": ":tiger2:",
		"category": "nature",
		"emoji_order": "1354",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "roar", "animal"]
	},
	"1f406": {
		"code_points": {
			"base": "1f406",
			"non_fully_qualified": "1f406",
			"decimal": "&#128006;"
		},
		"name": "leopard",
		"shortname": ":leopard:",
		"category": "nature",
		"emoji_order": "1355",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "roar", "animal"]
	},
	"1f434": {
		"code_points": {
			"base": "1f434",
			"non_fully_qualified": "1f434",
			"decimal": "&#128052;"
		},
		"name": "horse face",
		"shortname": ":horse:",
		"category": "nature",
		"emoji_order": "1356",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f40e": {
		"code_points": {
			"base": "1f40e",
			"non_fully_qualified": "1f40e",
			"decimal": "&#128014;"
		},
		"name": "horse",
		"shortname": ":racehorse:",
		"category": "nature",
		"emoji_order": "1357",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f98c": {
		"code_points": {
			"base": "1f98c",
			"non_fully_qualified": "1f98c",
			"decimal": "&#129420;"
		},
		"name": "deer",
		"shortname": ":deer:",
		"category": "nature",
		"emoji_order": "1358",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f984": {
		"code_points": {
			"base": "1f984",
			"non_fully_qualified": "1f984",
			"decimal": "&#129412;"
		},
		"name": "unicorn face",
		"shortname": ":unicorn:",
		"category": "nature",
		"emoji_order": "1359",
		"shortname_alternates": [":unicorn_face:"],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f42e": {
		"code_points": {
			"base": "1f42e",
			"non_fully_qualified": "1f42e",
			"decimal": "&#128046;"
		},
		"name": "cow face",
		"shortname": ":cow:",
		"category": "nature",
		"emoji_order": "1360",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f402": {
		"code_points": {
			"base": "1f402",
			"non_fully_qualified": "1f402",
			"decimal": "&#128002;"
		},
		"name": "ox",
		"shortname": ":ox:",
		"category": "nature",
		"emoji_order": "1361",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f403": {
		"code_points": {
			"base": "1f403",
			"non_fully_qualified": "1f403",
			"decimal": "&#128003;"
		},
		"name": "water buffalo",
		"shortname": ":water_buffalo:",
		"category": "nature",
		"emoji_order": "1362",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f404": {
		"code_points": {
			"base": "1f404",
			"non_fully_qualified": "1f404",
			"decimal": "&#128004;"
		},
		"name": "cow",
		"shortname": ":cow2:",
		"category": "nature",
		"emoji_order": "1363",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f437": {
		"code_points": {
			"base": "1f437",
			"non_fully_qualified": "1f437",
			"decimal": "&#128055;"
		},
		"name": "pig face",
		"shortname": ":pig:",
		"category": "nature",
		"emoji_order": "1364",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f416": {
		"code_points": {
			"base": "1f416",
			"non_fully_qualified": "1f416",
			"decimal": "&#128022;"
		},
		"name": "pig",
		"shortname": ":pig2:",
		"category": "nature",
		"emoji_order": "1365",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f417": {
		"code_points": {
			"base": "1f417",
			"non_fully_qualified": "1f417",
			"decimal": "&#128023;"
		},
		"name": "boar",
		"shortname": ":boar:",
		"category": "nature",
		"emoji_order": "1366",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f43d": {
		"code_points": {
			"base": "1f43d",
			"non_fully_qualified": "1f43d",
			"decimal": "&#128061;"
		},
		"name": "pig nose",
		"shortname": ":pig_nose:",
		"category": "nature",
		"emoji_order": "1367",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f40f": {
		"code_points": {
			"base": "1f40f",
			"non_fully_qualified": "1f40f",
			"decimal": "&#128015;"
		},
		"name": "ram",
		"shortname": ":ram:",
		"category": "nature",
		"emoji_order": "1368",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f411": {
		"code_points": {
			"base": "1f411",
			"non_fully_qualified": "1f411",
			"decimal": "&#128017;"
		},
		"name": "sheep",
		"shortname": ":sheep:",
		"category": "nature",
		"emoji_order": "1369",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f410": {
		"code_points": {
			"base": "1f410",
			"non_fully_qualified": "1f410",
			"decimal": "&#128016;"
		},
		"name": "goat",
		"shortname": ":goat:",
		"category": "nature",
		"emoji_order": "1370",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f42a": {
		"code_points": {
			"base": "1f42a",
			"non_fully_qualified": "1f42a",
			"decimal": "&#128042;"
		},
		"name": "dromedary camel",
		"shortname": ":dromedary_camel:",
		"category": "nature",
		"emoji_order": "1371",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f42b": {
		"code_points": {
			"base": "1f42b",
			"non_fully_qualified": "1f42b",
			"decimal": "&#128043;"
		},
		"name": "bactrian camel",
		"shortname": ":camel:",
		"category": "nature",
		"emoji_order": "1372",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal", "hump day"]
	},
	"1f418": {
		"code_points": {
			"base": "1f418",
			"non_fully_qualified": "1f418",
			"decimal": "&#128024;"
		},
		"name": "elephant",
		"shortname": ":elephant:",
		"category": "nature",
		"emoji_order": "1373",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f98f": {
		"code_points": {
			"base": "1f98f",
			"non_fully_qualified": "1f98f",
			"decimal": "&#129423;"
		},
		"name": "rhinoceros",
		"shortname": ":rhino:",
		"category": "nature",
		"emoji_order": "1374",
		"shortname_alternates": [":rhinoceros:"],
		"ascii": [],
		"keywords": []
	},
	"1f42d": {
		"code_points": {
			"base": "1f42d",
			"non_fully_qualified": "1f42d",
			"decimal": "&#128045;"
		},
		"name": "mouse face",
		"shortname": ":mouse:",
		"category": "nature",
		"emoji_order": "1375",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f401": {
		"code_points": {
			"base": "1f401",
			"non_fully_qualified": "1f401",
			"decimal": "&#128001;"
		},
		"name": "mouse",
		"shortname": ":mouse2:",
		"category": "nature",
		"emoji_order": "1376",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f400": {
		"code_points": {
			"base": "1f400",
			"non_fully_qualified": "1f400",
			"decimal": "&#128000;"
		},
		"name": "rat",
		"shortname": ":rat:",
		"category": "nature",
		"emoji_order": "1377",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f439": {
		"code_points": {
			"base": "1f439",
			"non_fully_qualified": "1f439",
			"decimal": "&#128057;"
		},
		"name": "hamster face",
		"shortname": ":hamster:",
		"category": "nature",
		"emoji_order": "1378",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f430": {
		"code_points": {
			"base": "1f430",
			"non_fully_qualified": "1f430",
			"decimal": "&#128048;"
		},
		"name": "rabbit face",
		"shortname": ":rabbit:",
		"category": "nature",
		"emoji_order": "1379",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f407": {
		"code_points": {
			"base": "1f407",
			"non_fully_qualified": "1f407",
			"decimal": "&#128007;"
		},
		"name": "rabbit",
		"shortname": ":rabbit2:",
		"category": "nature",
		"emoji_order": "1380",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f43f": {
		"code_points": {
			"base": "1f43f",
			"non_fully_qualified": "1f43f",
			"fully_qualified": "1f43f-fe0f",
			"decimal": "&#128063;"
		},
		"name": "chipmunk",
		"shortname": ":chipmunk:",
		"category": "nature",
		"emoji_order": "1381",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f987": {
		"code_points": {
			"base": "1f987",
			"non_fully_qualified": "1f987",
			"decimal": "&#129415;"
		},
		"name": "bat",
		"shortname": ":bat:",
		"category": "nature",
		"emoji_order": "1382",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f43b": {
		"code_points": {
			"base": "1f43b",
			"non_fully_qualified": "1f43b",
			"decimal": "&#128059;"
		},
		"name": "bear face",
		"shortname": ":bear:",
		"category": "nature",
		"emoji_order": "1383",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "roar", "animal"]
	},
	"1f428": {
		"code_points": {
			"base": "1f428",
			"non_fully_qualified": "1f428",
			"decimal": "&#128040;"
		},
		"name": "koala",
		"shortname": ":koala:",
		"category": "nature",
		"emoji_order": "1384",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f43c": {
		"code_points": {
			"base": "1f43c",
			"non_fully_qualified": "1f43c",
			"decimal": "&#128060;"
		},
		"name": "panda face",
		"shortname": ":panda_face:",
		"category": "nature",
		"emoji_order": "1385",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "roar", "animal"]
	},
	"1f43e": {
		"code_points": {
			"base": "1f43e",
			"non_fully_qualified": "1f43e",
			"decimal": "&#128062;"
		},
		"name": "paw prints",
		"shortname": ":feet:",
		"category": "nature",
		"emoji_order": "1386",
		"shortname_alternates": [":paw_prints:"],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f983": {
		"code_points": {
			"base": "1f983",
			"non_fully_qualified": "1f983",
			"decimal": "&#129411;"
		},
		"name": "turkey",
		"shortname": ":turkey:",
		"category": "nature",
		"emoji_order": "1387",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f414": {
		"code_points": {
			"base": "1f414",
			"non_fully_qualified": "1f414",
			"decimal": "&#128020;"
		},
		"name": "chicken",
		"shortname": ":chicken:",
		"category": "nature",
		"emoji_order": "1388",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal", "chicken"]
	},
	"1f413": {
		"code_points": {
			"base": "1f413",
			"non_fully_qualified": "1f413",
			"decimal": "&#128019;"
		},
		"name": "rooster",
		"shortname": ":rooster:",
		"category": "nature",
		"emoji_order": "1389",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f423": {
		"code_points": {
			"base": "1f423",
			"non_fully_qualified": "1f423",
			"decimal": "&#128035;"
		},
		"name": "hatching chick",
		"shortname": ":hatching_chick:",
		"category": "nature",
		"emoji_order": "1390",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal", "chicken"]
	},
	"1f424": {
		"code_points": {
			"base": "1f424",
			"non_fully_qualified": "1f424",
			"decimal": "&#128036;"
		},
		"name": "baby chick",
		"shortname": ":baby_chick:",
		"category": "nature",
		"emoji_order": "1391",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal", "chicken"]
	},
	"1f425": {
		"code_points": {
			"base": "1f425",
			"non_fully_qualified": "1f425",
			"decimal": "&#128037;"
		},
		"name": "front-facing baby chick",
		"shortname": ":hatched_chick:",
		"category": "nature",
		"emoji_order": "1392",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["animal", "chicken"]
	},
	"1f426": {
		"code_points": {
			"base": "1f426",
			"non_fully_qualified": "1f426",
			"decimal": "&#128038;"
		},
		"name": "bird",
		"shortname": ":bird:",
		"category": "nature",
		"emoji_order": "1393",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f427": {
		"code_points": {
			"base": "1f427",
			"non_fully_qualified": "1f427",
			"decimal": "&#128039;"
		},
		"name": "penguin",
		"shortname": ":penguin:",
		"category": "nature",
		"emoji_order": "1394",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f54a": {
		"code_points": {
			"base": "1f54a",
			"non_fully_qualified": "1f54a",
			"fully_qualified": "1f54a-fe0f",
			"decimal": "&#128330;"
		},
		"name": "dove of peace",
		"shortname": ":dove:",
		"category": "nature",
		"emoji_order": "1395",
		"shortname_alternates": [":dove_of_peace:"],
		"ascii": [],
		"keywords": ["animal"]
	},
	"1f985": {
		"code_points": {
			"base": "1f985",
			"non_fully_qualified": "1f985",
			"decimal": "&#129413;"
		},
		"name": "eagle",
		"shortname": ":eagle:",
		"category": "nature",
		"emoji_order": "1396",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f986": {
		"code_points": {
			"base": "1f986",
			"non_fully_qualified": "1f986",
			"decimal": "&#129414;"
		},
		"name": "duck",
		"shortname": ":duck:",
		"category": "nature",
		"emoji_order": "1397",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f989": {
		"code_points": {
			"base": "1f989",
			"non_fully_qualified": "1f989",
			"decimal": "&#129417;"
		},
		"name": "owl",
		"shortname": ":owl:",
		"category": "nature",
		"emoji_order": "1398",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f438": {
		"code_points": {
			"base": "1f438",
			"non_fully_qualified": "1f438",
			"decimal": "&#128056;"
		},
		"name": "frog face",
		"shortname": ":frog:",
		"category": "nature",
		"emoji_order": "1399",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f40a": {
		"code_points": {
			"base": "1f40a",
			"non_fully_qualified": "1f40a",
			"decimal": "&#128010;"
		},
		"name": "crocodile",
		"shortname": ":crocodile:",
		"category": "nature",
		"emoji_order": "1400",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "reptile", "animal"]
	},
	"1f422": {
		"code_points": {
			"base": "1f422",
			"non_fully_qualified": "1f422",
			"decimal": "&#128034;"
		},
		"name": "turtle",
		"shortname": ":turtle:",
		"category": "nature",
		"emoji_order": "1401",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "reptile", "animal"]
	},
	"1f98e": {
		"code_points": {
			"base": "1f98e",
			"non_fully_qualified": "1f98e",
			"decimal": "&#129422;"
		},
		"name": "lizard",
		"shortname": ":lizard:",
		"category": "nature",
		"emoji_order": "1402",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f40d": {
		"code_points": {
			"base": "1f40d",
			"non_fully_qualified": "1f40d",
			"decimal": "&#128013;"
		},
		"name": "snake",
		"shortname": ":snake:",
		"category": "nature",
		"emoji_order": "1403",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "reptile", "animal", "creationism"]
	},
	"1f432": {
		"code_points": {
			"base": "1f432",
			"non_fully_qualified": "1f432",
			"decimal": "&#128050;"
		},
		"name": "dragon face",
		"shortname": ":dragon_face:",
		"category": "nature",
		"emoji_order": "1404",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["roar", "monster", "reptile", "animal"]
	},
	"1f409": {
		"code_points": {
			"base": "1f409",
			"non_fully_qualified": "1f409",
			"decimal": "&#128009;"
		},
		"name": "dragon",
		"shortname": ":dragon:",
		"category": "nature",
		"emoji_order": "1405",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["roar", "reptile", "animal"]
	},
	"1f433": {
		"code_points": {
			"base": "1f433",
			"non_fully_qualified": "1f433",
			"decimal": "&#128051;"
		},
		"name": "spouting whale",
		"shortname": ":whale:",
		"category": "nature",
		"emoji_order": "1406",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "tropical", "whales", "animal"]
	},
	"1f40b": {
		"code_points": {
			"base": "1f40b",
			"non_fully_qualified": "1f40b",
			"decimal": "&#128011;"
		},
		"name": "whale",
		"shortname": ":whale2:",
		"category": "nature",
		"emoji_order": "1407",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "tropical", "whales", "animal"]
	},
	"1f42c": {
		"code_points": {
			"base": "1f42c",
			"non_fully_qualified": "1f42c",
			"decimal": "&#128044;"
		},
		"name": "dolphin",
		"shortname": ":dolphin:",
		"category": "nature",
		"emoji_order": "1408",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "tropical", "animal"]
	},
	"1f41f": {
		"code_points": {
			"base": "1f41f",
			"non_fully_qualified": "1f41f",
			"decimal": "&#128031;"
		},
		"name": "fish",
		"shortname": ":fish:",
		"category": "nature",
		"emoji_order": "1409",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f420": {
		"code_points": {
			"base": "1f420",
			"non_fully_qualified": "1f420",
			"decimal": "&#128032;"
		},
		"name": "tropical fish",
		"shortname": ":tropical_fish:",
		"category": "nature",
		"emoji_order": "1410",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f421": {
		"code_points": {
			"base": "1f421",
			"non_fully_qualified": "1f421",
			"decimal": "&#128033;"
		},
		"name": "blowfish",
		"shortname": ":blowfish:",
		"category": "nature",
		"emoji_order": "1411",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f988": {
		"code_points": {
			"base": "1f988",
			"non_fully_qualified": "1f988",
			"decimal": "&#129416;"
		},
		"name": "shark",
		"shortname": ":shark:",
		"category": "nature",
		"emoji_order": "1412",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f419": {
		"code_points": {
			"base": "1f419",
			"non_fully_qualified": "1f419",
			"decimal": "&#128025;"
		},
		"name": "octopus",
		"shortname": ":octopus:",
		"category": "nature",
		"emoji_order": "1413",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["wildlife", "animal"]
	},
	"1f41a": {
		"code_points": {
			"base": "1f41a",
			"non_fully_qualified": "1f41a",
			"decimal": "&#128026;"
		},
		"name": "spiral shell",
		"shortname": ":shell:",
		"category": "nature",
		"emoji_order": "1414",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f980": {
		"code_points": {
			"base": "1f980",
			"non_fully_qualified": "1f980",
			"decimal": "&#129408;"
		},
		"name": "crab",
		"shortname": ":crab:",
		"category": "nature",
		"emoji_order": "1415",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["tropical", "animal"]
	},
	"1f990": {
		"code_points": {
			"base": "1f990",
			"non_fully_qualified": "1f990",
			"decimal": "&#129424;"
		},
		"name": "shrimp",
		"shortname": ":shrimp:",
		"category": "nature",
		"emoji_order": "1416",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f991": {
		"code_points": {
			"base": "1f991",
			"non_fully_qualified": "1f991",
			"decimal": "&#129425;"
		},
		"name": "squid",
		"shortname": ":squid:",
		"category": "nature",
		"emoji_order": "1417",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f98b": {
		"code_points": {
			"base": "1f98b",
			"non_fully_qualified": "1f98b",
			"decimal": "&#129419;"
		},
		"name": "butterfly",
		"shortname": ":butterfly:",
		"category": "nature",
		"emoji_order": "1418",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f40c": {
		"code_points": {
			"base": "1f40c",
			"non_fully_qualified": "1f40c",
			"decimal": "&#128012;"
		},
		"name": "snail",
		"shortname": ":snail:",
		"category": "nature",
		"emoji_order": "1419",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["insects", "animal"]
	},
	"1f41b": {
		"code_points": {
			"base": "1f41b",
			"non_fully_qualified": "1f41b",
			"decimal": "&#128027;"
		},
		"name": "bug",
		"shortname": ":bug:",
		"category": "nature",
		"emoji_order": "1420",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["insects", "animal"]
	},
	"1f41c": {
		"code_points": {
			"base": "1f41c",
			"non_fully_qualified": "1f41c",
			"decimal": "&#128028;"
		},
		"name": "ant",
		"shortname": ":ant:",
		"category": "nature",
		"emoji_order": "1421",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["insects", "animal"]
	},
	"1f41d": {
		"code_points": {
			"base": "1f41d",
			"non_fully_qualified": "1f41d",
			"decimal": "&#128029;"
		},
		"name": "honeybee",
		"shortname": ":bee:",
		"category": "nature",
		"emoji_order": "1422",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["insects", "animal"]
	},
	"1f41e": {
		"code_points": {
			"base": "1f41e",
			"non_fully_qualified": "1f41e",
			"decimal": "&#128030;"
		},
		"name": "lady beetle",
		"shortname": ":beetle:",
		"category": "nature",
		"emoji_order": "1423",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["insects", "animal"]
	},
	"1f577": {
		"code_points": {
			"base": "1f577",
			"non_fully_qualified": "1f577",
			"fully_qualified": "1f577-fe0f",
			"decimal": "&#128375;"
		},
		"name": "spider",
		"shortname": ":spider:",
		"category": "nature",
		"emoji_order": "1424",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["insects", "halloween", "animal"]
	},
	"1f578": {
		"code_points": {
			"base": "1f578",
			"non_fully_qualified": "1f578",
			"fully_qualified": "1f578-fe0f",
			"decimal": "&#128376;"
		},
		"name": "spider web",
		"shortname": ":spider_web:",
		"category": "nature",
		"emoji_order": "1425",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["halloween"]
	},
	"1f982": {
		"code_points": {
			"base": "1f982",
			"non_fully_qualified": "1f982",
			"decimal": "&#129410;"
		},
		"name": "scorpion",
		"shortname": ":scorpion:",
		"category": "nature",
		"emoji_order": "1426",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["insects", "reptile", "animal"]
	},
	"1f490": {
		"code_points": {
			"base": "1f490",
			"non_fully_qualified": "1f490",
			"decimal": "&#128144;"
		},
		"name": "bouquet",
		"shortname": ":bouquet:",
		"category": "nature",
		"emoji_order": "1427",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "flower", "plant", "rip", "condolence"]
	},
	"1f338": {
		"code_points": {
			"base": "1f338",
			"non_fully_qualified": "1f338",
			"decimal": "&#127800;"
		},
		"name": "cherry blossom",
		"shortname": ":cherry_blossom:",
		"category": "nature",
		"emoji_order": "1428",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "flower", "plant", "tropical"]
	},
	"1f4ae": {
		"code_points": {
			"base": "1f4ae",
			"non_fully_qualified": "1f4ae",
			"decimal": "&#128174;"
		},
		"name": "white flower",
		"shortname": ":white_flower:",
		"category": "symbols",
		"emoji_order": "1429",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["flower", "symbol"]
	},
	"1f3f5": {
		"code_points": {
			"base": "1f3f5",
			"non_fully_qualified": "1f3f5",
			"fully_qualified": "1f3f5-fe0f",
			"decimal": "&#127989;"
		},
		"name": "rosette",
		"shortname": ":rosette:",
		"category": "nature",
		"emoji_order": "1430",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["tropical"]
	},
	"1f339": {
		"code_points": {
			"base": "1f339",
			"non_fully_qualified": "1f339",
			"decimal": "&#127801;"
		},
		"name": "rose",
		"shortname": ":rose:",
		"category": "nature",
		"emoji_order": "1431",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "flower", "plant", "rip", "condolence", "beautiful"]
	},
	"1f940": {
		"code_points": {
			"base": "1f940",
			"non_fully_qualified": "1f940",
			"decimal": "&#129344;"
		},
		"name": "wilted flower",
		"shortname": ":wilted_rose:",
		"category": "nature",
		"emoji_order": "1432",
		"shortname_alternates": [":wilted_flower:"],
		"ascii": [],
		"keywords": []
	},
	"1f33a": {
		"code_points": {
			"base": "1f33a",
			"non_fully_qualified": "1f33a",
			"decimal": "&#127802;"
		},
		"name": "hibiscus",
		"shortname": ":hibiscus:",
		"category": "nature",
		"emoji_order": "1433",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "flower", "plant", "tropical"]
	},
	"1f33b": {
		"code_points": {
			"base": "1f33b",
			"non_fully_qualified": "1f33b",
			"decimal": "&#127803;"
		},
		"name": "sunflower",
		"shortname": ":sunflower:",
		"category": "nature",
		"emoji_order": "1434",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "flower", "plant"]
	},
	"1f33c": {
		"code_points": {
			"base": "1f33c",
			"non_fully_qualified": "1f33c",
			"decimal": "&#127804;"
		},
		"name": "blossom",
		"shortname": ":blossom:",
		"category": "nature",
		"emoji_order": "1435",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "flower", "plant"]
	},
	"1f337": {
		"code_points": {
			"base": "1f337",
			"non_fully_qualified": "1f337",
			"decimal": "&#127799;"
		},
		"name": "tulip",
		"shortname": ":tulip:",
		"category": "nature",
		"emoji_order": "1436",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "flower", "plant", "vagina", "girls night"]
	},
	"1f331": {
		"code_points": {
			"base": "1f331",
			"non_fully_qualified": "1f331",
			"decimal": "&#127793;"
		},
		"name": "seedling",
		"shortname": ":seedling:",
		"category": "nature",
		"emoji_order": "1437",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "leaf"]
	},
	"1f332": {
		"code_points": {
			"base": "1f332",
			"non_fully_qualified": "1f332",
			"decimal": "&#127794;"
		},
		"name": "evergreen tree",
		"shortname": ":evergreen_tree:",
		"category": "nature",
		"emoji_order": "1438",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "holidays", "christmas", "camp", "trees"]
	},
	"1f333": {
		"code_points": {
			"base": "1f333",
			"non_fully_qualified": "1f333",
			"decimal": "&#127795;"
		},
		"name": "deciduous tree",
		"shortname": ":deciduous_tree:",
		"category": "nature",
		"emoji_order": "1439",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "camp", "trees"]
	},
	"1f334": {
		"code_points": {
			"base": "1f334",
			"non_fully_qualified": "1f334",
			"decimal": "&#127796;"
		},
		"name": "palm tree",
		"shortname": ":palm_tree:",
		"category": "nature",
		"emoji_order": "1440",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "tropical", "trees"]
	},
	"1f335": {
		"code_points": {
			"base": "1f335",
			"non_fully_qualified": "1f335",
			"decimal": "&#127797;"
		},
		"name": "cactus",
		"shortname": ":cactus:",
		"category": "nature",
		"emoji_order": "1441",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "trees"]
	},
	"1f33e": {
		"code_points": {
			"base": "1f33e",
			"non_fully_qualified": "1f33e",
			"decimal": "&#127806;"
		},
		"name": "ear of rice",
		"shortname": ":ear_of_rice:",
		"category": "nature",
		"emoji_order": "1442",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "leaf"]
	},
	"1f33f": {
		"code_points": {
			"base": "1f33f",
			"non_fully_qualified": "1f33f",
			"decimal": "&#127807;"
		},
		"name": "herb",
		"shortname": ":herb:",
		"category": "nature",
		"emoji_order": "1443",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "leaf"]
	},
	"2618": {
		"code_points": {
			"base": "2618",
			"non_fully_qualified": "2618",
			"fully_qualified": "2618-fe0f",
			"decimal": "&#9752;"
		},
		"name": "shamrock",
		"shortname": ":shamrock:",
		"category": "nature",
		"emoji_order": "1444",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "luck", "leaf"]
	},
	"1f340": {
		"code_points": {
			"base": "1f340",
			"non_fully_qualified": "1f340",
			"decimal": "&#127808;"
		},
		"name": "four leaf clover",
		"shortname": ":four_leaf_clover:",
		"category": "nature",
		"emoji_order": "1445",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "luck", "leaf", "sol"]
	},
	"1f341": {
		"code_points": {
			"base": "1f341",
			"non_fully_qualified": "1f341",
			"decimal": "&#127809;"
		},
		"name": "maple leaf",
		"shortname": ":maple_leaf:",
		"category": "nature",
		"emoji_order": "1446",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "leaf"]
	},
	"1f342": {
		"code_points": {
			"base": "1f342",
			"non_fully_qualified": "1f342",
			"decimal": "&#127810;"
		},
		"name": "fallen leaf",
		"shortname": ":fallen_leaf:",
		"category": "nature",
		"emoji_order": "1447",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "leaf"]
	},
	"1f343": {
		"code_points": {
			"base": "1f343",
			"non_fully_qualified": "1f343",
			"decimal": "&#127811;"
		},
		"name": "leaf fluttering in wind",
		"shortname": ":leaves:",
		"category": "nature",
		"emoji_order": "1448",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "leaf"]
	},
	"1f347": {
		"code_points": {
			"base": "1f347",
			"non_fully_qualified": "1f347",
			"decimal": "&#127815;"
		},
		"name": "grapes",
		"shortname": ":grapes:",
		"category": "food",
		"emoji_order": "1449",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food"]
	},
	"1f348": {
		"code_points": {
			"base": "1f348",
			"non_fully_qualified": "1f348",
			"decimal": "&#127816;"
		},
		"name": "melon",
		"shortname": ":melon:",
		"category": "food",
		"emoji_order": "1450",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "boobs", "food"]
	},
	"1f349": {
		"code_points": {
			"base": "1f349",
			"non_fully_qualified": "1f349",
			"decimal": "&#127817;"
		},
		"name": "watermelon",
		"shortname": ":watermelon:",
		"category": "food",
		"emoji_order": "1451",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food"]
	},
	"1f34a": {
		"code_points": {
			"base": "1f34a",
			"non_fully_qualified": "1f34a",
			"decimal": "&#127818;"
		},
		"name": "tangerine",
		"shortname": ":tangerine:",
		"category": "food",
		"emoji_order": "1452",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food"]
	},
	"1f34b": {
		"code_points": {
			"base": "1f34b",
			"non_fully_qualified": "1f34b",
			"decimal": "&#127819;"
		},
		"name": "lemon",
		"shortname": ":lemon:",
		"category": "food",
		"emoji_order": "1453",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food"]
	},
	"1f34c": {
		"code_points": {
			"base": "1f34c",
			"non_fully_qualified": "1f34c",
			"decimal": "&#127820;"
		},
		"name": "banana",
		"shortname": ":banana:",
		"category": "food",
		"emoji_order": "1454",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "penis", "food"]
	},
	"1f34d": {
		"code_points": {
			"base": "1f34d",
			"non_fully_qualified": "1f34d",
			"decimal": "&#127821;"
		},
		"name": "pineapple",
		"shortname": ":pineapple:",
		"category": "food",
		"emoji_order": "1455",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food", "tropical"]
	},
	"1f34e": {
		"code_points": {
			"base": "1f34e",
			"non_fully_qualified": "1f34e",
			"decimal": "&#127822;"
		},
		"name": "red apple",
		"shortname": ":apple:",
		"category": "food",
		"emoji_order": "1456",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food", "creationism"]
	},
	"1f34f": {
		"code_points": {
			"base": "1f34f",
			"non_fully_qualified": "1f34f",
			"decimal": "&#127823;"
		},
		"name": "green apple",
		"shortname": ":green_apple:",
		"category": "food",
		"emoji_order": "1457",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food"]
	},
	"1f350": {
		"code_points": {
			"base": "1f350",
			"non_fully_qualified": "1f350",
			"decimal": "&#127824;"
		},
		"name": "pear",
		"shortname": ":pear:",
		"category": "food",
		"emoji_order": "1458",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food"]
	},
	"1f351": {
		"code_points": {
			"base": "1f351",
			"non_fully_qualified": "1f351",
			"decimal": "&#127825;"
		},
		"name": "peach",
		"shortname": ":peach:",
		"category": "food",
		"emoji_order": "1459",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "butt", "food"]
	},
	"1f352": {
		"code_points": {
			"base": "1f352",
			"non_fully_qualified": "1f352",
			"decimal": "&#127826;"
		},
		"name": "cherries",
		"shortname": ":cherries:",
		"category": "food",
		"emoji_order": "1460",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food"]
	},
	"1f353": {
		"code_points": {
			"base": "1f353",
			"non_fully_qualified": "1f353",
			"decimal": "&#127827;"
		},
		"name": "strawberry",
		"shortname": ":strawberry:",
		"category": "food",
		"emoji_order": "1461",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "food"]
	},
	"1f95d": {
		"code_points": {
			"base": "1f95d",
			"non_fully_qualified": "1f95d",
			"decimal": "&#129373;"
		},
		"name": "kiwifruit",
		"shortname": ":kiwi:",
		"category": "food",
		"emoji_order": "1462",
		"shortname_alternates": [":kiwifruit:"],
		"ascii": [],
		"keywords": []
	},
	"1f345": {
		"code_points": {
			"base": "1f345",
			"non_fully_qualified": "1f345",
			"decimal": "&#127813;"
		},
		"name": "tomato",
		"shortname": ":tomato:",
		"category": "food",
		"emoji_order": "1463",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["fruit", "vegetables", "food"]
	},
	"1f951": {
		"code_points": {
			"base": "1f951",
			"non_fully_qualified": "1f951",
			"decimal": "&#129361;"
		},
		"name": "avocado",
		"shortname": ":avocado:",
		"category": "food",
		"emoji_order": "1464",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f346": {
		"code_points": {
			"base": "1f346",
			"non_fully_qualified": "1f346",
			"decimal": "&#127814;"
		},
		"name": "aubergine",
		"shortname": ":eggplant:",
		"category": "food",
		"emoji_order": "1465",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["vegetables", "penis", "food"]
	},
	"1f954": {
		"code_points": {
			"base": "1f954",
			"non_fully_qualified": "1f954",
			"decimal": "&#129364;"
		},
		"name": "potato",
		"shortname": ":potato:",
		"category": "food",
		"emoji_order": "1466",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f955": {
		"code_points": {
			"base": "1f955",
			"non_fully_qualified": "1f955",
			"decimal": "&#129365;"
		},
		"name": "carrot",
		"shortname": ":carrot:",
		"category": "food",
		"emoji_order": "1467",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f33d": {
		"code_points": {
			"base": "1f33d",
			"non_fully_qualified": "1f33d",
			"decimal": "&#127805;"
		},
		"name": "ear of maize",
		"shortname": ":corn:",
		"category": "food",
		"emoji_order": "1468",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["vegetables", "food"]
	},
	"1f336": {
		"code_points": {
			"base": "1f336",
			"non_fully_qualified": "1f336",
			"fully_qualified": "1f336-fe0f",
			"decimal": "&#127798;"
		},
		"name": "hot pepper",
		"shortname": ":hot_pepper:",
		"category": "food",
		"emoji_order": "1469",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["vegetables", "food"]
	},
	"1f952": {
		"code_points": {
			"base": "1f952",
			"non_fully_qualified": "1f952",
			"decimal": "&#129362;"
		},
		"name": "cucumber",
		"shortname": ":cucumber:",
		"category": "food",
		"emoji_order": "1470",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f344": {
		"code_points": {
			"base": "1f344",
			"non_fully_qualified": "1f344",
			"decimal": "&#127812;"
		},
		"name": "mushroom",
		"shortname": ":mushroom:",
		"category": "nature",
		"emoji_order": "1471",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "drugs"]
	},
	"1f95c": {
		"code_points": {
			"base": "1f95c",
			"non_fully_qualified": "1f95c",
			"decimal": "&#129372;"
		},
		"name": "peanuts",
		"shortname": ":peanuts:",
		"category": "food",
		"emoji_order": "1472",
		"shortname_alternates": [":shelled_peanut:"],
		"ascii": [],
		"keywords": []
	},
	"1f330": {
		"code_points": {
			"base": "1f330",
			"non_fully_qualified": "1f330",
			"decimal": "&#127792;"
		},
		"name": "chestnut",
		"shortname": ":chestnut:",
		"category": "nature",
		"emoji_order": "1473",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant"]
	},
	"1f35e": {
		"code_points": {
			"base": "1f35e",
			"non_fully_qualified": "1f35e",
			"decimal": "&#127838;"
		},
		"name": "bread",
		"shortname": ":bread:",
		"category": "food",
		"emoji_order": "1474",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f950": {
		"code_points": {
			"base": "1f950",
			"non_fully_qualified": "1f950",
			"decimal": "&#129360;"
		},
		"name": "croissant",
		"shortname": ":croissant:",
		"category": "food",
		"emoji_order": "1475",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f956": {
		"code_points": {
			"base": "1f956",
			"non_fully_qualified": "1f956",
			"decimal": "&#129366;"
		},
		"name": "baguette bread",
		"shortname": ":french_bread:",
		"category": "food",
		"emoji_order": "1476",
		"shortname_alternates": [":baguette_bread:"],
		"ascii": [],
		"keywords": []
	},
	"1f95e": {
		"code_points": {
			"base": "1f95e",
			"non_fully_qualified": "1f95e",
			"decimal": "&#129374;"
		},
		"name": "pancakes",
		"shortname": ":pancakes:",
		"category": "food",
		"emoji_order": "1477",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f9c0": {
		"code_points": {
			"base": "1f9c0",
			"non_fully_qualified": "1f9c0",
			"decimal": "&#129472;"
		},
		"name": "cheese wedge",
		"shortname": ":cheese:",
		"category": "food",
		"emoji_order": "1478",
		"shortname_alternates": [":cheese_wedge:"],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f356": {
		"code_points": {
			"base": "1f356",
			"non_fully_qualified": "1f356",
			"decimal": "&#127830;"
		},
		"name": "meat on bone",
		"shortname": ":meat_on_bone:",
		"category": "food",
		"emoji_order": "1479",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f357": {
		"code_points": {
			"base": "1f357",
			"non_fully_qualified": "1f357",
			"decimal": "&#127831;"
		},
		"name": "poultry leg",
		"shortname": ":poultry_leg:",
		"category": "food",
		"emoji_order": "1480",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "holidays"]
	},
	"1f953": {
		"code_points": {
			"base": "1f953",
			"non_fully_qualified": "1f953",
			"decimal": "&#129363;"
		},
		"name": "bacon",
		"shortname": ":bacon:",
		"category": "food",
		"emoji_order": "1481",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["pig"]
	},
	"1f354": {
		"code_points": {
			"base": "1f354",
			"non_fully_qualified": "1f354",
			"decimal": "&#127828;"
		},
		"name": "hamburger",
		"shortname": ":hamburger:",
		"category": "food",
		"emoji_order": "1482",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["america", "food"]
	},
	"1f35f": {
		"code_points": {
			"base": "1f35f",
			"non_fully_qualified": "1f35f",
			"decimal": "&#127839;"
		},
		"name": "french fries",
		"shortname": ":fries:",
		"category": "food",
		"emoji_order": "1483",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["america", "food"]
	},
	"1f355": {
		"code_points": {
			"base": "1f355",
			"non_fully_qualified": "1f355",
			"decimal": "&#127829;"
		},
		"name": "slice of pizza",
		"shortname": ":pizza:",
		"category": "food",
		"emoji_order": "1484",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["italian", "food", "boys night"]
	},
	"1f32d": {
		"code_points": {
			"base": "1f32d",
			"non_fully_qualified": "1f32d",
			"decimal": "&#127789;"
		},
		"name": "hot dog",
		"shortname": ":hotdog:",
		"category": "food",
		"emoji_order": "1485",
		"shortname_alternates": [":hot_dog:"],
		"ascii": [],
		"keywords": ["america", "food"]
	},
	"1f32e": {
		"code_points": {
			"base": "1f32e",
			"non_fully_qualified": "1f32e",
			"decimal": "&#127790;"
		},
		"name": "taco",
		"shortname": ":taco:",
		"category": "food",
		"emoji_order": "1486",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "mexican", "vagina"]
	},
	"1f32f": {
		"code_points": {
			"base": "1f32f",
			"non_fully_qualified": "1f32f",
			"decimal": "&#127791;"
		},
		"name": "burrito",
		"shortname": ":burrito:",
		"category": "food",
		"emoji_order": "1487",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "mexican"]
	},
	"1f959": {
		"code_points": {
			"base": "1f959",
			"non_fully_qualified": "1f959",
			"decimal": "&#129369;"
		},
		"name": "stuffed flatbread",
		"shortname": ":stuffed_flatbread:",
		"category": "food",
		"emoji_order": "1488",
		"shortname_alternates": [":stuffed_pita:"],
		"ascii": [],
		"keywords": []
	},
	"1f95a": {
		"code_points": {
			"base": "1f95a",
			"non_fully_qualified": "1f95a",
			"decimal": "&#129370;"
		},
		"name": "egg",
		"shortname": ":egg:",
		"category": "food",
		"emoji_order": "1489",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f373": {
		"code_points": {
			"base": "1f373",
			"non_fully_qualified": "1f373",
			"decimal": "&#127859;"
		},
		"name": "cooking",
		"shortname": ":cooking:",
		"category": "food",
		"emoji_order": "1490",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f958": {
		"code_points": {
			"base": "1f958",
			"non_fully_qualified": "1f958",
			"decimal": "&#129368;"
		},
		"name": "shallow pan of food",
		"shortname": ":shallow_pan_of_food:",
		"category": "food",
		"emoji_order": "1491",
		"shortname_alternates": [":paella:"],
		"ascii": [],
		"keywords": ["pan of food"]
	},
	"1f372": {
		"code_points": {
			"base": "1f372",
			"non_fully_qualified": "1f372",
			"decimal": "&#127858;"
		},
		"name": "pot of food",
		"shortname": ":stew:",
		"category": "food",
		"emoji_order": "1492",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "steam"]
	},
	"1f957": {
		"code_points": {
			"base": "1f957",
			"non_fully_qualified": "1f957",
			"decimal": "&#129367;"
		},
		"name": "green salad",
		"shortname": ":salad:",
		"category": "food",
		"emoji_order": "1493",
		"shortname_alternates": [":green_salad:"],
		"ascii": [],
		"keywords": []
	},
	"1f37f": {
		"code_points": {
			"base": "1f37f",
			"non_fully_qualified": "1f37f",
			"decimal": "&#127871;"
		},
		"name": "popcorn",
		"shortname": ":popcorn:",
		"category": "food",
		"emoji_order": "1494",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "parties"]
	},
	"1f371": {
		"code_points": {
			"base": "1f371",
			"non_fully_qualified": "1f371",
			"decimal": "&#127857;"
		},
		"name": "bento box",
		"shortname": ":bento:",
		"category": "food",
		"emoji_order": "1495",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "sushi", "japan", "food"]
	},
	"1f358": {
		"code_points": {
			"base": "1f358",
			"non_fully_qualified": "1f358",
			"decimal": "&#127832;"
		},
		"name": "rice cracker",
		"shortname": ":rice_cracker:",
		"category": "food",
		"emoji_order": "1496",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sushi", "food"]
	},
	"1f359": {
		"code_points": {
			"base": "1f359",
			"non_fully_qualified": "1f359",
			"decimal": "&#127833;"
		},
		"name": "rice ball",
		"shortname": ":rice_ball:",
		"category": "food",
		"emoji_order": "1497",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sushi", "japan", "food"]
	},
	"1f35a": {
		"code_points": {
			"base": "1f35a",
			"non_fully_qualified": "1f35a",
			"decimal": "&#127834;"
		},
		"name": "cooked rice",
		"shortname": ":rice:",
		"category": "food",
		"emoji_order": "1498",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sushi", "japan", "food"]
	},
	"1f35b": {
		"code_points": {
			"base": "1f35b",
			"non_fully_qualified": "1f35b",
			"decimal": "&#127835;"
		},
		"name": "curry and rice",
		"shortname": ":curry:",
		"category": "food",
		"emoji_order": "1499",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f35c": {
		"code_points": {
			"base": "1f35c",
			"non_fully_qualified": "1f35c",
			"decimal": "&#127836;"
		},
		"name": "steaming bowl",
		"shortname": ":ramen:",
		"category": "food",
		"emoji_order": "1500",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["noodles", "ramen", "japan", "food"]
	},
	"1f35d": {
		"code_points": {
			"base": "1f35d",
			"non_fully_qualified": "1f35d",
			"decimal": "&#127837;"
		},
		"name": "spaghetti",
		"shortname": ":spaghetti:",
		"category": "food",
		"emoji_order": "1501",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["noodles", "pasta", "italian", "food"]
	},
	"1f360": {
		"code_points": {
			"base": "1f360",
			"non_fully_qualified": "1f360",
			"decimal": "&#127840;"
		},
		"name": "roasted sweet potato",
		"shortname": ":sweet_potato:",
		"category": "food",
		"emoji_order": "1502",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["vegetables", "food"]
	},
	"1f362": {
		"code_points": {
			"base": "1f362",
			"non_fully_qualified": "1f362",
			"decimal": "&#127842;"
		},
		"name": "oden",
		"shortname": ":oden:",
		"category": "food",
		"emoji_order": "1503",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f363": {
		"code_points": {
			"base": "1f363",
			"non_fully_qualified": "1f363",
			"decimal": "&#127843;"
		},
		"name": "sushi",
		"shortname": ":sushi:",
		"category": "food",
		"emoji_order": "1504",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sushi", "japan", "food"]
	},
	"1f364": {
		"code_points": {
			"base": "1f364",
			"non_fully_qualified": "1f364",
			"decimal": "&#127844;"
		},
		"name": "fried shrimp",
		"shortname": ":fried_shrimp:",
		"category": "food",
		"emoji_order": "1505",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f365": {
		"code_points": {
			"base": "1f365",
			"non_fully_qualified": "1f365",
			"decimal": "&#127845;"
		},
		"name": "fish cake with swirl design",
		"shortname": ":fish_cake:",
		"category": "food",
		"emoji_order": "1506",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sushi", "food"]
	},
	"1f361": {
		"code_points": {
			"base": "1f361",
			"non_fully_qualified": "1f361",
			"decimal": "&#127841;"
		},
		"name": "dango",
		"shortname": ":dango:",
		"category": "food",
		"emoji_order": "1507",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f366": {
		"code_points": {
			"base": "1f366",
			"non_fully_qualified": "1f366",
			"decimal": "&#127846;"
		},
		"name": "soft ice cream",
		"shortname": ":icecream:",
		"category": "food",
		"emoji_order": "1508",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f367": {
		"code_points": {
			"base": "1f367",
			"non_fully_qualified": "1f367",
			"decimal": "&#127847;"
		},
		"name": "shaved ice",
		"shortname": ":shaved_ice:",
		"category": "food",
		"emoji_order": "1509",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f368": {
		"code_points": {
			"base": "1f368",
			"non_fully_qualified": "1f368",
			"decimal": "&#127848;"
		},
		"name": "ice cream",
		"shortname": ":ice_cream:",
		"category": "food",
		"emoji_order": "1510",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f369": {
		"code_points": {
			"base": "1f369",
			"non_fully_qualified": "1f369",
			"decimal": "&#127849;"
		},
		"name": "doughnut",
		"shortname": ":doughnut:",
		"category": "food",
		"emoji_order": "1511",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f36a": {
		"code_points": {
			"base": "1f36a",
			"non_fully_qualified": "1f36a",
			"decimal": "&#127850;"
		},
		"name": "cookie",
		"shortname": ":cookie:",
		"category": "food",
		"emoji_order": "1512",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "vagina"]
	},
	"1f382": {
		"code_points": {
			"base": "1f382",
			"non_fully_qualified": "1f382",
			"decimal": "&#127874;"
		},
		"name": "birthday cake",
		"shortname": ":birthday:",
		"category": "food",
		"emoji_order": "1513",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["birthday", "food", "parties"]
	},
	"1f370": {
		"code_points": {
			"base": "1f370",
			"non_fully_qualified": "1f370",
			"decimal": "&#127856;"
		},
		"name": "shortcake",
		"shortname": ":cake:",
		"category": "food",
		"emoji_order": "1514",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f36b": {
		"code_points": {
			"base": "1f36b",
			"non_fully_qualified": "1f36b",
			"decimal": "&#127851;"
		},
		"name": "chocolate bar",
		"shortname": ":chocolate_bar:",
		"category": "food",
		"emoji_order": "1515",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "halloween"]
	},
	"1f36c": {
		"code_points": {
			"base": "1f36c",
			"non_fully_qualified": "1f36c",
			"decimal": "&#127852;"
		},
		"name": "candy",
		"shortname": ":candy:",
		"category": "food",
		"emoji_order": "1516",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "halloween"]
	},
	"1f36d": {
		"code_points": {
			"base": "1f36d",
			"non_fully_qualified": "1f36d",
			"decimal": "&#127853;"
		},
		"name": "lollipop",
		"shortname": ":lollipop:",
		"category": "food",
		"emoji_order": "1517",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "halloween"]
	},
	"1f36e": {
		"code_points": {
			"base": "1f36e",
			"non_fully_qualified": "1f36e",
			"decimal": "&#127854;"
		},
		"name": "custard",
		"shortname": ":custard:",
		"category": "food",
		"emoji_order": "1518",
		"shortname_alternates": [":pudding:", ":flan:"],
		"ascii": [],
		"keywords": ["food"]
	},
	"1f36f": {
		"code_points": {
			"base": "1f36f",
			"non_fully_qualified": "1f36f",
			"decimal": "&#127855;"
		},
		"name": "honey pot",
		"shortname": ":honey_pot:",
		"category": "food",
		"emoji_order": "1519",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["food", "vagina"]
	},
	"1f37c": {
		"code_points": {
			"base": "1f37c",
			"non_fully_qualified": "1f37c",
			"decimal": "&#127868;"
		},
		"name": "baby bottle",
		"shortname": ":baby_bottle:",
		"category": "food",
		"emoji_order": "1520",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["drink", "object", "food", "baby"]
	},
	"1f95b": {
		"code_points": {
			"base": "1f95b",
			"non_fully_qualified": "1f95b",
			"decimal": "&#129371;"
		},
		"name": "glass of milk",
		"shortname": ":milk:",
		"category": "food",
		"emoji_order": "1521",
		"shortname_alternates": [":glass_of_milk:"],
		"ascii": [],
		"keywords": []
	},
	"2615": {
		"code_points": {
			"base": "2615",
			"non_fully_qualified": "2615",
			"fully_qualified": "2615-fe0f",
			"decimal": "&#9749;"
		},
		"name": "hot beverage",
		"shortname": ":coffee:",
		"category": "food",
		"emoji_order": "1522",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["drink", "caffeine", "steam", "morning"]
	},
	"1f375": {
		"code_points": {
			"base": "1f375",
			"non_fully_qualified": "1f375",
			"decimal": "&#127861;"
		},
		"name": "teacup without handle",
		"shortname": ":tea:",
		"category": "food",
		"emoji_order": "1523",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["drink", "japan", "caffeine", "steam", "morning"]
	},
	"1f376": {
		"code_points": {
			"base": "1f376",
			"non_fully_qualified": "1f376",
			"decimal": "&#127862;"
		},
		"name": "sake bottle and cup",
		"shortname": ":sake:",
		"category": "food",
		"emoji_order": "1524",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["drink", "japan", "sake", "alcohol", "girls night"]
	},
	"1f37e": {
		"code_points": {
			"base": "1f37e",
			"non_fully_qualified": "1f37e",
			"decimal": "&#127870;"
		},
		"name": "bottle with popping cork",
		"shortname": ":champagne:",
		"category": "food",
		"emoji_order": "1525",
		"shortname_alternates": [":bottle_with_popping_cork:"],
		"ascii": [],
		"keywords": ["drink", "cheers", "alcohol", "parties"]
	},
	"1f377": {
		"code_points": {
			"base": "1f377",
			"non_fully_qualified": "1f377",
			"decimal": "&#127863;"
		},
		"name": "wine glass",
		"shortname": ":wine_glass:",
		"category": "food",
		"emoji_order": "1526",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["drink", "italian", "alcohol", "girls night", "parties"]
	},
	"1f378": {
		"code_points": {
			"base": "1f378",
			"non_fully_qualified": "1f378",
			"decimal": "&#127864;"
		},
		"name": "cocktail glass",
		"shortname": ":cocktail:",
		"category": "food",
		"emoji_order": "1527",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["drink", "cocktail", "alcohol", "girls night", "parties"]
	},
	"1f379": {
		"code_points": {
			"base": "1f379",
			"non_fully_qualified": "1f379",
			"decimal": "&#127865;"
		},
		"name": "tropical drink",
		"shortname": ":tropical_drink:",
		"category": "food",
		"emoji_order": "1528",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["drink", "cocktail", "tropical", "alcohol"]
	},
	"1f37a": {
		"code_points": {
			"base": "1f37a",
			"non_fully_qualified": "1f37a",
			"decimal": "&#127866;"
		},
		"name": "beer mug",
		"shortname": ":beer:",
		"category": "food",
		"emoji_order": "1529",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["drink", "beer", "alcohol", "parties"]
	},
	"1f37b": {
		"code_points": {
			"base": "1f37b",
			"non_fully_qualified": "1f37b",
			"decimal": "&#127867;"
		},
		"name": "clinking beer mugs",
		"shortname": ":beers:",
		"category": "food",
		"emoji_order": "1530",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["drink", "cheers", "beer", "alcohol", "thank you", "boys night", "parties"]
	},
	"1f942": {
		"code_points": {
			"base": "1f942",
			"non_fully_qualified": "1f942",
			"decimal": "&#129346;"
		},
		"name": "clinking glasses",
		"shortname": ":champagne_glass:",
		"category": "food",
		"emoji_order": "1531",
		"shortname_alternates": [":clinking_glass:"],
		"ascii": [],
		"keywords": []
	},
	"1f943": {
		"code_points": {
			"base": "1f943",
			"non_fully_qualified": "1f943",
			"decimal": "&#129347;"
		},
		"name": "tumbler glass",
		"shortname": ":tumbler_glass:",
		"category": "food",
		"emoji_order": "1532",
		"shortname_alternates": [":whisky:"],
		"ascii": [],
		"keywords": ["booze"]
	},
	"1f37d": {
		"code_points": {
			"base": "1f37d",
			"non_fully_qualified": "1f37d",
			"fully_qualified": "1f37d-fe0f",
			"decimal": "&#127869;"
		},
		"name": "fork and knife with plate",
		"shortname": ":fork_knife_plate:",
		"category": "food",
		"emoji_order": "1533",
		"shortname_alternates": [":fork_and_knife_with_plate:"],
		"ascii": [],
		"keywords": ["object", "food"]
	},
	"1f374": {
		"code_points": {
			"base": "1f374",
			"non_fully_qualified": "1f374",
			"decimal": "&#127860;"
		},
		"name": "fork and knife",
		"shortname": ":fork_and_knife:",
		"category": "food",
		"emoji_order": "1534",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "weapon", "food"]
	},
	"1f944": {
		"code_points": {
			"base": "1f944",
			"non_fully_qualified": "1f944",
			"decimal": "&#129348;"
		},
		"name": "spoon",
		"shortname": ":spoon:",
		"category": "food",
		"emoji_order": "1535",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f52a": {
		"code_points": {
			"base": "1f52a",
			"non_fully_qualified": "1f52a",
			"decimal": "&#128298;"
		},
		"name": "hocho",
		"shortname": ":knife:",
		"category": "objects",
		"emoji_order": "1536",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "weapon"]
	},
	"1f3fa": {
		"code_points": {
			"base": "1f3fa",
			"non_fully_qualified": "1f3fa",
			"decimal": "&#127994;"
		},
		"name": "amphora",
		"shortname": ":amphora:",
		"category": "objects",
		"emoji_order": "1537",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f30d": {
		"code_points": {
			"base": "1f30d",
			"non_fully_qualified": "1f30d",
			"decimal": "&#127757;"
		},
		"name": "earth globe europe-africa",
		"shortname": ":earth_africa:",
		"category": "nature",
		"emoji_order": "1538",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["map", "vacation", "globe"]
	},
	"1f30e": {
		"code_points": {
			"base": "1f30e",
			"non_fully_qualified": "1f30e",
			"decimal": "&#127758;"
		},
		"name": "earth globe americas",
		"shortname": ":earth_americas:",
		"category": "nature",
		"emoji_order": "1539",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["map", "vacation", "globe"]
	},
	"1f30f": {
		"code_points": {
			"base": "1f30f",
			"non_fully_qualified": "1f30f",
			"decimal": "&#127759;"
		},
		"name": "earth globe asia-australia",
		"shortname": ":earth_asia:",
		"category": "nature",
		"emoji_order": "1540",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["map", "vacation", "globe"]
	},
	"1f310": {
		"code_points": {
			"base": "1f310",
			"non_fully_qualified": "1f310",
			"decimal": "&#127760;"
		},
		"name": "globe with meridians",
		"shortname": ":globe_with_meridians:",
		"category": "symbols",
		"emoji_order": "1541",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "globe"]
	},
	"1f5fa": {
		"code_points": {
			"base": "1f5fa",
			"non_fully_qualified": "1f5fa",
			"fully_qualified": "1f5fa-fe0f",
			"decimal": "&#128506;"
		},
		"name": "world map",
		"shortname": ":map:",
		"category": "objects",
		"emoji_order": "1542",
		"shortname_alternates": [":world_map:"],
		"ascii": [],
		"keywords": ["travel", "map", "vacation"]
	},
	"1f5fe": {
		"code_points": {
			"base": "1f5fe",
			"non_fully_qualified": "1f5fe",
			"decimal": "&#128510;"
		},
		"name": "silhouette of japan",
		"shortname": ":japan:",
		"category": "travel",
		"emoji_order": "1543",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "travel", "map", "vacation", "tropical"]
	},
	"1f3d4": {
		"code_points": {
			"base": "1f3d4",
			"non_fully_qualified": "1f3d4",
			"fully_qualified": "1f3d4-fe0f",
			"decimal": "&#127956;"
		},
		"name": "snow capped mountain",
		"shortname": ":mountain_snow:",
		"category": "travel",
		"emoji_order": "1544",
		"shortname_alternates": [":snow_capped_mountain:"],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "cold", "camp"]
	},
	"26f0": {
		"code_points": {
			"base": "26f0",
			"non_fully_qualified": "26f0",
			"fully_qualified": "26f0-fe0f",
			"decimal": "&#9968;"
		},
		"name": "mountain",
		"shortname": ":mountain:",
		"category": "travel",
		"emoji_order": "1545",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "camp"]
	},
	"1f30b": {
		"code_points": {
			"base": "1f30b",
			"non_fully_qualified": "1f30b",
			"decimal": "&#127755;"
		},
		"name": "volcano",
		"shortname": ":volcano:",
		"category": "travel",
		"emoji_order": "1546",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "tropical"]
	},
	"1f5fb": {
		"code_points": {
			"base": "1f5fb",
			"non_fully_qualified": "1f5fb",
			"decimal": "&#128507;"
		},
		"name": "mount fuji",
		"shortname": ":mount_fuji:",
		"category": "travel",
		"emoji_order": "1547",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "cold", "camp"]
	},
	"1f3d5": {
		"code_points": {
			"base": "1f3d5",
			"non_fully_qualified": "1f3d5",
			"fully_qualified": "1f3d5-fe0f",
			"decimal": "&#127957;"
		},
		"name": "camping",
		"shortname": ":camping:",
		"category": "travel",
		"emoji_order": "1548",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "camp"]
	},
	"1f3d6": {
		"code_points": {
			"base": "1f3d6",
			"non_fully_qualified": "1f3d6",
			"fully_qualified": "1f3d6-fe0f",
			"decimal": "&#127958;"
		},
		"name": "beach with umbrella",
		"shortname": ":beach:",
		"category": "travel",
		"emoji_order": "1549",
		"shortname_alternates": [":beach_with_umbrella:"],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "tropical", "beach", "swim"]
	},
	"1f3dc": {
		"code_points": {
			"base": "1f3dc",
			"non_fully_qualified": "1f3dc",
			"fully_qualified": "1f3dc-fe0f",
			"decimal": "&#127964;"
		},
		"name": "desert",
		"shortname": ":desert:",
		"category": "travel",
		"emoji_order": "1550",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "hot"]
	},
	"1f3dd": {
		"code_points": {
			"base": "1f3dd",
			"non_fully_qualified": "1f3dd",
			"fully_qualified": "1f3dd-fe0f",
			"decimal": "&#127965;"
		},
		"name": "desert island",
		"shortname": ":island:",
		"category": "travel",
		"emoji_order": "1551",
		"shortname_alternates": [":desert_island:"],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "tropical", "beach", "swim"]
	},
	"1f3de": {
		"code_points": {
			"base": "1f3de",
			"non_fully_qualified": "1f3de",
			"fully_qualified": "1f3de-fe0f",
			"decimal": "&#127966;"
		},
		"name": "national park",
		"shortname": ":park:",
		"category": "travel",
		"emoji_order": "1552",
		"shortname_alternates": [":national_park:"],
		"ascii": [],
		"keywords": ["travel", "vacation", "park", "camp"]
	},
	"1f3df": {
		"code_points": {
			"base": "1f3df",
			"non_fully_qualified": "1f3df",
			"fully_qualified": "1f3df-fe0f",
			"decimal": "&#127967;"
		},
		"name": "stadium",
		"shortname": ":stadium:",
		"category": "travel",
		"emoji_order": "1553",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "travel", "vacation", "boys night"]
	},
	"1f3db": {
		"code_points": {
			"base": "1f3db",
			"non_fully_qualified": "1f3db",
			"fully_qualified": "1f3db-fe0f",
			"decimal": "&#127963;"
		},
		"name": "classical building",
		"shortname": ":classical_building:",
		"category": "travel",
		"emoji_order": "1554",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "travel", "vacation"]
	},
	"1f3d7": {
		"code_points": {
			"base": "1f3d7",
			"non_fully_qualified": "1f3d7",
			"fully_qualified": "1f3d7-fe0f",
			"decimal": "&#127959;"
		},
		"name": "building construction",
		"shortname": ":construction_site:",
		"category": "travel",
		"emoji_order": "1555",
		"shortname_alternates": [":building_construction:"],
		"ascii": [],
		"keywords": ["building", "crane"]
	},
	"1f3d8": {
		"code_points": {
			"base": "1f3d8",
			"non_fully_qualified": "1f3d8",
			"fully_qualified": "1f3d8-fe0f",
			"decimal": "&#127960;"
		},
		"name": "house buildings",
		"shortname": ":homes:",
		"category": "travel",
		"emoji_order": "1556",
		"shortname_alternates": [":house_buildings:"],
		"ascii": [],
		"keywords": ["places", "building", "house"]
	},
	"1f3d9": {
		"code_points": {
			"base": "1f3d9",
			"non_fully_qualified": "1f3d9",
			"fully_qualified": "1f3d9-fe0f",
			"decimal": "&#127961;"
		},
		"name": "cityscape",
		"shortname": ":cityscape:",
		"category": "travel",
		"emoji_order": "1557",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "vacation"]
	},
	"1f3da": {
		"code_points": {
			"base": "1f3da",
			"non_fully_qualified": "1f3da",
			"fully_qualified": "1f3da-fe0f",
			"decimal": "&#127962;"
		},
		"name": "derelict house building",
		"shortname": ":house_abandoned:",
		"category": "travel",
		"emoji_order": "1558",
		"shortname_alternates": [":derelict_house_building:"],
		"ascii": [],
		"keywords": ["places", "building", "house"]
	},
	"1f3e0": {
		"code_points": {
			"base": "1f3e0",
			"non_fully_qualified": "1f3e0",
			"decimal": "&#127968;"
		},
		"name": "house building",
		"shortname": ":house:",
		"category": "travel",
		"emoji_order": "1559",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "house"]
	},
	"1f3e1": {
		"code_points": {
			"base": "1f3e1",
			"non_fully_qualified": "1f3e1",
			"decimal": "&#127969;"
		},
		"name": "house with garden",
		"shortname": ":house_with_garden:",
		"category": "travel",
		"emoji_order": "1560",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "house"]
	},
	"1f3e2": {
		"code_points": {
			"base": "1f3e2",
			"non_fully_qualified": "1f3e2",
			"decimal": "&#127970;"
		},
		"name": "office building",
		"shortname": ":office:",
		"category": "travel",
		"emoji_order": "1561",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "work"]
	},
	"1f3e3": {
		"code_points": {
			"base": "1f3e3",
			"non_fully_qualified": "1f3e3",
			"decimal": "&#127971;"
		},
		"name": "japanese post office",
		"shortname": ":post_office:",
		"category": "travel",
		"emoji_order": "1562",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "post office"]
	},
	"1f3e4": {
		"code_points": {
			"base": "1f3e4",
			"non_fully_qualified": "1f3e4",
			"decimal": "&#127972;"
		},
		"name": "european post office",
		"shortname": ":european_post_office:",
		"category": "travel",
		"emoji_order": "1563",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "post office"]
	},
	"1f3e5": {
		"code_points": {
			"base": "1f3e5",
			"non_fully_qualified": "1f3e5",
			"decimal": "&#127973;"
		},
		"name": "hospital",
		"shortname": ":hospital:",
		"category": "travel",
		"emoji_order": "1564",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "health", "911"]
	},
	"1f3e6": {
		"code_points": {
			"base": "1f3e6",
			"non_fully_qualified": "1f3e6",
			"decimal": "&#127974;"
		},
		"name": "bank",
		"shortname": ":bank:",
		"category": "travel",
		"emoji_order": "1565",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building"]
	},
	"1f3e8": {
		"code_points": {
			"base": "1f3e8",
			"non_fully_qualified": "1f3e8",
			"decimal": "&#127976;"
		},
		"name": "hotel",
		"shortname": ":hotel:",
		"category": "travel",
		"emoji_order": "1566",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "vacation"]
	},
	"1f3e9": {
		"code_points": {
			"base": "1f3e9",
			"non_fully_qualified": "1f3e9",
			"decimal": "&#127977;"
		},
		"name": "love hotel",
		"shortname": ":love_hotel:",
		"category": "travel",
		"emoji_order": "1567",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "love"]
	},
	"1f3ea": {
		"code_points": {
			"base": "1f3ea",
			"non_fully_qualified": "1f3ea",
			"decimal": "&#127978;"
		},
		"name": "convenience store",
		"shortname": ":convenience_store:",
		"category": "travel",
		"emoji_order": "1568",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building"]
	},
	"1f3eb": {
		"code_points": {
			"base": "1f3eb",
			"non_fully_qualified": "1f3eb",
			"decimal": "&#127979;"
		},
		"name": "school",
		"shortname": ":school:",
		"category": "travel",
		"emoji_order": "1569",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building"]
	},
	"1f3ec": {
		"code_points": {
			"base": "1f3ec",
			"non_fully_qualified": "1f3ec",
			"decimal": "&#127980;"
		},
		"name": "department store",
		"shortname": ":department_store:",
		"category": "travel",
		"emoji_order": "1570",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building"]
	},
	"1f3ed": {
		"code_points": {
			"base": "1f3ed",
			"non_fully_qualified": "1f3ed",
			"decimal": "&#127981;"
		},
		"name": "factory",
		"shortname": ":factory:",
		"category": "travel",
		"emoji_order": "1571",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "travel", "steam"]
	},
	"1f3ef": {
		"code_points": {
			"base": "1f3ef",
			"non_fully_qualified": "1f3ef",
			"decimal": "&#127983;"
		},
		"name": "japanese castle",
		"shortname": ":japanese_castle:",
		"category": "travel",
		"emoji_order": "1572",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "travel", "vacation"]
	},
	"1f3f0": {
		"code_points": {
			"base": "1f3f0",
			"non_fully_qualified": "1f3f0",
			"decimal": "&#127984;"
		},
		"name": "european castle",
		"shortname": ":european_castle:",
		"category": "travel",
		"emoji_order": "1573",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "travel", "vacation"]
	},
	"1f492": {
		"code_points": {
			"base": "1f492",
			"non_fully_qualified": "1f492",
			"decimal": "&#128146;"
		},
		"name": "wedding",
		"shortname": ":wedding:",
		"category": "travel",
		"emoji_order": "1574",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "wedding", "building", "love", "parties"]
	},
	"1f5fc": {
		"code_points": {
			"base": "1f5fc",
			"non_fully_qualified": "1f5fc",
			"decimal": "&#128508;"
		},
		"name": "tokyo tower",
		"shortname": ":tokyo_tower:",
		"category": "travel",
		"emoji_order": "1575",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "eiffel tower"]
	},
	"1f5fd": {
		"code_points": {
			"base": "1f5fd",
			"non_fully_qualified": "1f5fd",
			"decimal": "&#128509;"
		},
		"name": "statue of liberty",
		"shortname": ":statue_of_liberty:",
		"category": "travel",
		"emoji_order": "1576",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "america", "travel", "vacation", "statue of liberty", "free speech"]
	},
	"26ea": {
		"code_points": {
			"base": "26ea",
			"non_fully_qualified": "26ea",
			"fully_qualified": "26ea-fe0f",
			"decimal": "&#9962;"
		},
		"name": "church",
		"shortname": ":church:",
		"category": "travel",
		"emoji_order": "1577",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "wedding", "religion", "building", "condolence"]
	},
	"1f54c": {
		"code_points": {
			"base": "1f54c",
			"non_fully_qualified": "1f54c",
			"decimal": "&#128332;"
		},
		"name": "mosque",
		"shortname": ":mosque:",
		"category": "travel",
		"emoji_order": "1578",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "religion", "building", "vacation", "condolence"]
	},
	"1f54d": {
		"code_points": {
			"base": "1f54d",
			"non_fully_qualified": "1f54d",
			"decimal": "&#128333;"
		},
		"name": "synagogue",
		"shortname": ":synagogue:",
		"category": "travel",
		"emoji_order": "1579",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "religion", "building", "travel", "vacation", "condolence"]
	},
	"26e9": {
		"code_points": {
			"base": "26e9",
			"non_fully_qualified": "26e9",
			"fully_qualified": "26e9-fe0f",
			"decimal": "&#9961;"
		},
		"name": "shinto shrine",
		"shortname": ":shinto_shrine:",
		"category": "travel",
		"emoji_order": "1580",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "travel", "vacation"]
	},
	"1f54b": {
		"code_points": {
			"base": "1f54b",
			"non_fully_qualified": "1f54b",
			"decimal": "&#128331;"
		},
		"name": "kaaba",
		"shortname": ":kaaba:",
		"category": "travel",
		"emoji_order": "1581",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "religion", "building", "condolence"]
	},
	"26f2": {
		"code_points": {
			"base": "26f2",
			"non_fully_qualified": "26f2",
			"fully_qualified": "26f2-fe0f",
			"decimal": "&#9970;"
		},
		"name": "fountain",
		"shortname": ":fountain:",
		"category": "travel",
		"emoji_order": "1582",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["travel", "vacation"]
	},
	"26fa": {
		"code_points": {
			"base": "26fa",
			"non_fully_qualified": "26fa",
			"fully_qualified": "26fa-fe0f",
			"decimal": "&#9978;"
		},
		"name": "tent",
		"shortname": ":tent:",
		"category": "travel",
		"emoji_order": "1583",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "camp"]
	},
	"1f301": {
		"code_points": {
			"base": "1f301",
			"non_fully_qualified": "1f301",
			"decimal": "&#127745;"
		},
		"name": "foggy",
		"shortname": ":foggy:",
		"category": "travel",
		"emoji_order": "1584",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "sky", "travel", "vacation"]
	},
	"1f303": {
		"code_points": {
			"base": "1f303",
			"non_fully_qualified": "1f303",
			"decimal": "&#127747;"
		},
		"name": "night with stars",
		"shortname": ":night_with_stars:",
		"category": "travel",
		"emoji_order": "1585",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building", "sky", "vacation", "goodnight"]
	},
	"1f304": {
		"code_points": {
			"base": "1f304",
			"non_fully_qualified": "1f304",
			"decimal": "&#127748;"
		},
		"name": "sunrise over mountains",
		"shortname": ":sunrise_over_mountains:",
		"category": "travel",
		"emoji_order": "1586",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "sky", "travel", "vacation", "day", "sun", "camp", "morning"]
	},
	"1f305": {
		"code_points": {
			"base": "1f305",
			"non_fully_qualified": "1f305",
			"decimal": "&#127749;"
		},
		"name": "sunrise",
		"shortname": ":sunrise:",
		"category": "travel",
		"emoji_order": "1587",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "sky", "travel", "vacation", "tropical", "day", "sun", "hump day", "morning"]
	},
	"1f306": {
		"code_points": {
			"base": "1f306",
			"non_fully_qualified": "1f306",
			"decimal": "&#127750;"
		},
		"name": "cityscape at dusk",
		"shortname": ":city_dusk:",
		"category": "travel",
		"emoji_order": "1588",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "building"]
	},
	"1f307": {
		"code_points": {
			"base": "1f307",
			"non_fully_qualified": "1f307",
			"decimal": "&#127751;"
		},
		"name": "sunset over buildings",
		"shortname": ":city_sunset:",
		"category": "travel",
		"emoji_order": "1589",
		"shortname_alternates": [":city_sunrise:"],
		"ascii": [],
		"keywords": ["places", "building", "sky", "vacation"]
	},
	"1f309": {
		"code_points": {
			"base": "1f309",
			"non_fully_qualified": "1f309",
			"decimal": "&#127753;"
		},
		"name": "bridge at night",
		"shortname": ":bridge_at_night:",
		"category": "travel",
		"emoji_order": "1590",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "travel", "vacation", "goodnight"]
	},
	"2668": {
		"code_points": {
			"base": "2668",
			"non_fully_qualified": "2668",
			"fully_qualified": "2668-fe0f",
			"decimal": "&#9832;"
		},
		"name": "hot springs",
		"shortname": ":hotsprings:",
		"category": "symbols",
		"emoji_order": "1591",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f30c": {
		"code_points": {
			"base": "1f30c",
			"non_fully_qualified": "1f30c",
			"decimal": "&#127756;"
		},
		"name": "milky way",
		"shortname": ":milky_way:",
		"category": "travel",
		"emoji_order": "1592",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "space", "sky", "travel", "vacation"]
	},
	"1f3a0": {
		"code_points": {
			"base": "1f3a0",
			"non_fully_qualified": "1f3a0",
			"decimal": "&#127904;"
		},
		"name": "carousel horse",
		"shortname": ":carousel_horse:",
		"category": "travel",
		"emoji_order": "1593",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "object", "vacation", "roller coaster", "carousel"]
	},
	"1f3a1": {
		"code_points": {
			"base": "1f3a1",
			"non_fully_qualified": "1f3a1",
			"decimal": "&#127905;"
		},
		"name": "ferris wheel",
		"shortname": ":ferris_wheel:",
		"category": "travel",
		"emoji_order": "1594",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "vacation", "ferris wheel"]
	},
	"1f3a2": {
		"code_points": {
			"base": "1f3a2",
			"non_fully_qualified": "1f3a2",
			"decimal": "&#127906;"
		},
		"name": "roller coaster",
		"shortname": ":roller_coaster:",
		"category": "travel",
		"emoji_order": "1595",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "vacation", "roller coaster"]
	},
	"1f488": {
		"code_points": {
			"base": "1f488",
			"non_fully_qualified": "1f488",
			"decimal": "&#128136;"
		},
		"name": "barber pole",
		"shortname": ":barber:",
		"category": "objects",
		"emoji_order": "1596",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f3aa": {
		"code_points": {
			"base": "1f3aa",
			"non_fully_qualified": "1f3aa",
			"decimal": "&#127914;"
		},
		"name": "circus tent",
		"shortname": ":circus_tent:",
		"category": "activity",
		"emoji_order": "1597",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["circus tent"]
	},
	"1f3ad": {
		"code_points": {
			"base": "1f3ad",
			"non_fully_qualified": "1f3ad",
			"decimal": "&#127917;"
		},
		"name": "performing arts",
		"shortname": ":performing_arts:",
		"category": "activity",
		"emoji_order": "1598",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["theatre", "movie"]
	},
	"1f5bc": {
		"code_points": {
			"base": "1f5bc",
			"non_fully_qualified": "1f5bc",
			"fully_qualified": "1f5bc-fe0f",
			"decimal": "&#128444;"
		},
		"name": "frame with picture",
		"shortname": ":frame_photo:",
		"category": "objects",
		"emoji_order": "1599",
		"shortname_alternates": [":frame_with_picture:"],
		"ascii": [],
		"keywords": ["travel", "vacation"]
	},
	"1f3a8": {
		"code_points": {
			"base": "1f3a8",
			"non_fully_qualified": "1f3a8",
			"decimal": "&#127912;"
		},
		"name": "artist palette",
		"shortname": ":art:",
		"category": "activity",
		"emoji_order": "1600",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3b0": {
		"code_points": {
			"base": "1f3b0",
			"non_fully_qualified": "1f3b0",
			"decimal": "&#127920;"
		},
		"name": "slot machine",
		"shortname": ":slot_machine:",
		"category": "activity",
		"emoji_order": "1601",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "boys night"]
	},
	"1f682": {
		"code_points": {
			"base": "1f682",
			"non_fully_qualified": "1f682",
			"decimal": "&#128642;"
		},
		"name": "steam locomotive",
		"shortname": ":steam_locomotive:",
		"category": "travel",
		"emoji_order": "1602",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train", "steam"]
	},
	"1f683": {
		"code_points": {
			"base": "1f683",
			"non_fully_qualified": "1f683",
			"decimal": "&#128643;"
		},
		"name": "railway car",
		"shortname": ":railway_car:",
		"category": "travel",
		"emoji_order": "1603",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f684": {
		"code_points": {
			"base": "1f684",
			"non_fully_qualified": "1f684",
			"decimal": "&#128644;"
		},
		"name": "high-speed train",
		"shortname": ":bullettrain_side:",
		"category": "travel",
		"emoji_order": "1604",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f685": {
		"code_points": {
			"base": "1f685",
			"non_fully_qualified": "1f685",
			"decimal": "&#128645;"
		},
		"name": "high-speed train with bullet nose",
		"shortname": ":bullettrain_front:",
		"category": "travel",
		"emoji_order": "1605",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f686": {
		"code_points": {
			"base": "1f686",
			"non_fully_qualified": "1f686",
			"decimal": "&#128646;"
		},
		"name": "train",
		"shortname": ":train2:",
		"category": "travel",
		"emoji_order": "1606",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f687": {
		"code_points": {
			"base": "1f687",
			"non_fully_qualified": "1f687",
			"decimal": "&#128647;"
		},
		"name": "metro",
		"shortname": ":metro:",
		"category": "travel",
		"emoji_order": "1607",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f688": {
		"code_points": {
			"base": "1f688",
			"non_fully_qualified": "1f688",
			"decimal": "&#128648;"
		},
		"name": "light rail",
		"shortname": ":light_rail:",
		"category": "travel",
		"emoji_order": "1608",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f689": {
		"code_points": {
			"base": "1f689",
			"non_fully_qualified": "1f689",
			"decimal": "&#128649;"
		},
		"name": "station",
		"shortname": ":station:",
		"category": "travel",
		"emoji_order": "1609",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f68a": {
		"code_points": {
			"base": "1f68a",
			"non_fully_qualified": "1f68a",
			"decimal": "&#128650;"
		},
		"name": "tram",
		"shortname": ":tram:",
		"category": "travel",
		"emoji_order": "1610",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f69d": {
		"code_points": {
			"base": "1f69d",
			"non_fully_qualified": "1f69d",
			"decimal": "&#128669;"
		},
		"name": "monorail",
		"shortname": ":monorail:",
		"category": "travel",
		"emoji_order": "1611",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train", "vacation"]
	},
	"1f69e": {
		"code_points": {
			"base": "1f69e",
			"non_fully_qualified": "1f69e",
			"decimal": "&#128670;"
		},
		"name": "mountain railway",
		"shortname": ":mountain_railway:",
		"category": "travel",
		"emoji_order": "1612",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f68b": {
		"code_points": {
			"base": "1f68b",
			"non_fully_qualified": "1f68b",
			"decimal": "&#128651;"
		},
		"name": "tram car",
		"shortname": ":train:",
		"category": "travel",
		"emoji_order": "1613",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f68c": {
		"code_points": {
			"base": "1f68c",
			"non_fully_qualified": "1f68c",
			"decimal": "&#128652;"
		},
		"name": "bus",
		"shortname": ":bus:",
		"category": "travel",
		"emoji_order": "1614",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "bus", "office"]
	},
	"1f68d": {
		"code_points": {
			"base": "1f68d",
			"non_fully_qualified": "1f68d",
			"decimal": "&#128653;"
		},
		"name": "oncoming bus",
		"shortname": ":oncoming_bus:",
		"category": "travel",
		"emoji_order": "1615",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "bus", "travel"]
	},
	"1f68e": {
		"code_points": {
			"base": "1f68e",
			"non_fully_qualified": "1f68e",
			"decimal": "&#128654;"
		},
		"name": "trolleybus",
		"shortname": ":trolleybus:",
		"category": "travel",
		"emoji_order": "1616",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "bus", "travel"]
	},
	"1f690": {
		"code_points": {
			"base": "1f690",
			"non_fully_qualified": "1f690",
			"decimal": "&#128656;"
		},
		"name": "minibus",
		"shortname": ":minibus:",
		"category": "travel",
		"emoji_order": "1617",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "bus"]
	},
	"1f691": {
		"code_points": {
			"base": "1f691",
			"non_fully_qualified": "1f691",
			"decimal": "&#128657;"
		},
		"name": "ambulance",
		"shortname": ":ambulance:",
		"category": "travel",
		"emoji_order": "1618",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "911"]
	},
	"1f692": {
		"code_points": {
			"base": "1f692",
			"non_fully_qualified": "1f692",
			"decimal": "&#128658;"
		},
		"name": "fire engine",
		"shortname": ":fire_engine:",
		"category": "travel",
		"emoji_order": "1619",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "truck", "911"]
	},
	"1f693": {
		"code_points": {
			"base": "1f693",
			"non_fully_qualified": "1f693",
			"decimal": "&#128659;"
		},
		"name": "police car",
		"shortname": ":police_car:",
		"category": "travel",
		"emoji_order": "1620",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "car", "police", "911"]
	},
	"1f694": {
		"code_points": {
			"base": "1f694",
			"non_fully_qualified": "1f694",
			"decimal": "&#128660;"
		},
		"name": "oncoming police car",
		"shortname": ":oncoming_police_car:",
		"category": "travel",
		"emoji_order": "1621",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "car", "police", "911"]
	},
	"1f695": {
		"code_points": {
			"base": "1f695",
			"non_fully_qualified": "1f695",
			"decimal": "&#128661;"
		},
		"name": "taxi",
		"shortname": ":taxi:",
		"category": "travel",
		"emoji_order": "1622",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "car", "travel"]
	},
	"1f696": {
		"code_points": {
			"base": "1f696",
			"non_fully_qualified": "1f696",
			"decimal": "&#128662;"
		},
		"name": "oncoming taxi",
		"shortname": ":oncoming_taxi:",
		"category": "travel",
		"emoji_order": "1623",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "car", "travel"]
	},
	"1f697": {
		"code_points": {
			"base": "1f697",
			"non_fully_qualified": "1f697",
			"decimal": "&#128663;"
		},
		"name": "automobile",
		"shortname": ":red_car:",
		"category": "travel",
		"emoji_order": "1624",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "car", "travel"]
	},
	"1f698": {
		"code_points": {
			"base": "1f698",
			"non_fully_qualified": "1f698",
			"decimal": "&#128664;"
		},
		"name": "oncoming automobile",
		"shortname": ":oncoming_automobile:",
		"category": "travel",
		"emoji_order": "1625",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "car", "travel"]
	},
	"1f699": {
		"code_points": {
			"base": "1f699",
			"non_fully_qualified": "1f699",
			"decimal": "&#128665;"
		},
		"name": "recreational vehicle",
		"shortname": ":blue_car:",
		"category": "travel",
		"emoji_order": "1626",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "car", "travel"]
	},
	"1f69a": {
		"code_points": {
			"base": "1f69a",
			"non_fully_qualified": "1f69a",
			"decimal": "&#128666;"
		},
		"name": "delivery truck",
		"shortname": ":truck:",
		"category": "travel",
		"emoji_order": "1627",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "truck"]
	},
	"1f69b": {
		"code_points": {
			"base": "1f69b",
			"non_fully_qualified": "1f69b",
			"decimal": "&#128667;"
		},
		"name": "articulated lorry",
		"shortname": ":articulated_lorry:",
		"category": "travel",
		"emoji_order": "1628",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "truck"]
	},
	"1f69c": {
		"code_points": {
			"base": "1f69c",
			"non_fully_qualified": "1f69c",
			"decimal": "&#128668;"
		},
		"name": "tractor",
		"shortname": ":tractor:",
		"category": "travel",
		"emoji_order": "1629",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation"]
	},
	"1f6b2": {
		"code_points": {
			"base": "1f6b2",
			"non_fully_qualified": "1f6b2",
			"decimal": "&#128690;"
		},
		"name": "bicycle",
		"shortname": ":bike:",
		"category": "travel",
		"emoji_order": "1630",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "bike"]
	},
	"1f6f4": {
		"code_points": {
			"base": "1f6f4",
			"non_fully_qualified": "1f6f4",
			"decimal": "&#128756;"
		},
		"name": "scooter",
		"shortname": ":scooter:",
		"category": "travel",
		"emoji_order": "1631",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6f5": {
		"code_points": {
			"base": "1f6f5",
			"non_fully_qualified": "1f6f5",
			"decimal": "&#128757;"
		},
		"name": "motor scooter",
		"shortname": ":motor_scooter:",
		"category": "travel",
		"emoji_order": "1632",
		"shortname_alternates": [":motorbike:"],
		"ascii": [],
		"keywords": ["moped"]
	},
	"1f68f": {
		"code_points": {
			"base": "1f68f",
			"non_fully_qualified": "1f68f",
			"decimal": "&#128655;"
		},
		"name": "bus stop",
		"shortname": ":busstop:",
		"category": "travel",
		"emoji_order": "1633",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f6e3": {
		"code_points": {
			"base": "1f6e3",
			"non_fully_qualified": "1f6e3",
			"fully_qualified": "1f6e3-fe0f",
			"decimal": "&#128739;"
		},
		"name": "motorway",
		"shortname": ":motorway:",
		"category": "travel",
		"emoji_order": "1634",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["travel", "vacation", "camp"]
	},
	"1f6e4": {
		"code_points": {
			"base": "1f6e4",
			"non_fully_qualified": "1f6e4",
			"fully_qualified": "1f6e4-fe0f",
			"decimal": "&#128740;"
		},
		"name": "railway track",
		"shortname": ":railway_track:",
		"category": "travel",
		"emoji_order": "1635",
		"shortname_alternates": [":railroad_track:"],
		"ascii": [],
		"keywords": ["travel", "train", "vacation"]
	},
	"26fd": {
		"code_points": {
			"base": "26fd",
			"non_fully_qualified": "26fd",
			"fully_qualified": "26fd-fe0f",
			"decimal": "&#9981;"
		},
		"name": "fuel pump",
		"shortname": ":fuelpump:",
		"category": "travel",
		"emoji_order": "1636",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "gas pump"]
	},
	"1f6a8": {
		"code_points": {
			"base": "1f6a8",
			"non_fully_qualified": "1f6a8",
			"decimal": "&#128680;"
		},
		"name": "police cars revolving light",
		"shortname": ":rotating_light:",
		"category": "travel",
		"emoji_order": "1637",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "object", "police", "911"]
	},
	"1f6a5": {
		"code_points": {
			"base": "1f6a5",
			"non_fully_qualified": "1f6a5",
			"decimal": "&#128677;"
		},
		"name": "horizontal traffic light",
		"shortname": ":traffic_light:",
		"category": "travel",
		"emoji_order": "1638",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "stop light"]
	},
	"1f6a6": {
		"code_points": {
			"base": "1f6a6",
			"non_fully_qualified": "1f6a6",
			"decimal": "&#128678;"
		},
		"name": "vertical traffic light",
		"shortname": ":vertical_traffic_light:",
		"category": "travel",
		"emoji_order": "1639",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "stop light"]
	},
	"1f6a7": {
		"code_points": {
			"base": "1f6a7",
			"non_fully_qualified": "1f6a7",
			"decimal": "&#128679;"
		},
		"name": "construction sign",
		"shortname": ":construction:",
		"category": "travel",
		"emoji_order": "1640",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f6d1": {
		"code_points": {
			"base": "1f6d1",
			"non_fully_qualified": "1f6d1",
			"decimal": "&#128721;"
		},
		"name": "octagonal sign",
		"shortname": ":octagonal_sign:",
		"category": "symbols",
		"emoji_order": "1641",
		"shortname_alternates": [":stop_sign:"],
		"ascii": [],
		"keywords": []
	},
	"2693": {
		"code_points": {
			"base": "2693",
			"non_fully_qualified": "2693",
			"fully_qualified": "2693-fe0f",
			"decimal": "&#9875;"
		},
		"name": "anchor",
		"shortname": ":anchor:",
		"category": "travel",
		"emoji_order": "1642",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "travel", "boat", "vacation"]
	},
	"26f5": {
		"code_points": {
			"base": "26f5",
			"non_fully_qualified": "26f5",
			"fully_qualified": "26f5-fe0f",
			"decimal": "&#9973;"
		},
		"name": "sailboat",
		"shortname": ":sailboat:",
		"category": "travel",
		"emoji_order": "1643",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "boat", "vacation"]
	},
	"1f6f6": {
		"code_points": {
			"base": "1f6f6",
			"non_fully_qualified": "1f6f6",
			"decimal": "&#128758;"
		},
		"name": "canoe",
		"shortname": ":canoe:",
		"category": "travel",
		"emoji_order": "1644",
		"shortname_alternates": [":kayak:"],
		"ascii": [],
		"keywords": []
	},
	"1f6a4": {
		"code_points": {
			"base": "1f6a4",
			"non_fully_qualified": "1f6a4",
			"decimal": "&#128676;"
		},
		"name": "speedboat",
		"shortname": ":speedboat:",
		"category": "travel",
		"emoji_order": "1645",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "boat", "vacation", "tropical"]
	},
	"1f6f3": {
		"code_points": {
			"base": "1f6f3",
			"non_fully_qualified": "1f6f3",
			"fully_qualified": "1f6f3-fe0f",
			"decimal": "&#128755;"
		},
		"name": "passenger ship",
		"shortname": ":cruise_ship:",
		"category": "travel",
		"emoji_order": "1646",
		"shortname_alternates": [":passenger_ship:"],
		"ascii": [],
		"keywords": ["transportation", "travel", "boat", "vacation"]
	},
	"26f4": {
		"code_points": {
			"base": "26f4",
			"non_fully_qualified": "26f4",
			"fully_qualified": "26f4-fe0f",
			"decimal": "&#9972;"
		},
		"name": "ferry",
		"shortname": ":ferry:",
		"category": "travel",
		"emoji_order": "1647",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "boat", "vacation"]
	},
	"1f6e5": {
		"code_points": {
			"base": "1f6e5",
			"non_fully_qualified": "1f6e5",
			"fully_qualified": "1f6e5-fe0f",
			"decimal": "&#128741;"
		},
		"name": "motorboat",
		"shortname": ":motorboat:",
		"category": "travel",
		"emoji_order": "1648",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "boat"]
	},
	"1f6a2": {
		"code_points": {
			"base": "1f6a2",
			"non_fully_qualified": "1f6a2",
			"decimal": "&#128674;"
		},
		"name": "ship",
		"shortname": ":ship:",
		"category": "travel",
		"emoji_order": "1649",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "boat", "vacation"]
	},
	"2708": {
		"code_points": {
			"base": "2708",
			"non_fully_qualified": "2708",
			"fully_qualified": "2708-fe0f",
			"decimal": "&#9992;"
		},
		"name": "airplane",
		"shortname": ":airplane:",
		"category": "travel",
		"emoji_order": "1650",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "plane", "travel", "vacation", "fly"]
	},
	"1f6e9": {
		"code_points": {
			"base": "1f6e9",
			"non_fully_qualified": "1f6e9",
			"fully_qualified": "1f6e9-fe0f",
			"decimal": "&#128745;"
		},
		"name": "small airplane",
		"shortname": ":airplane_small:",
		"category": "travel",
		"emoji_order": "1651",
		"shortname_alternates": [":small_airplane:"],
		"ascii": [],
		"keywords": ["transportation", "plane", "travel", "vacation", "fly"]
	},
	"1f6eb": {
		"code_points": {
			"base": "1f6eb",
			"non_fully_qualified": "1f6eb",
			"decimal": "&#128747;"
		},
		"name": "airplane departure",
		"shortname": ":airplane_departure:",
		"category": "travel",
		"emoji_order": "1652",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "plane", "travel", "vacation", "fly"]
	},
	"1f6ec": {
		"code_points": {
			"base": "1f6ec",
			"non_fully_qualified": "1f6ec",
			"decimal": "&#128748;"
		},
		"name": "airplane arriving",
		"shortname": ":airplane_arriving:",
		"category": "travel",
		"emoji_order": "1653",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "plane", "travel", "vacation", "fly"]
	},
	"1f4ba": {
		"code_points": {
			"base": "1f4ba",
			"non_fully_qualified": "1f4ba",
			"decimal": "&#128186;"
		},
		"name": "seat",
		"shortname": ":seat:",
		"category": "travel",
		"emoji_order": "1654",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "object", "travel", "vacation"]
	},
	"1f681": {
		"code_points": {
			"base": "1f681",
			"non_fully_qualified": "1f681",
			"decimal": "&#128641;"
		},
		"name": "helicopter",
		"shortname": ":helicopter:",
		"category": "travel",
		"emoji_order": "1655",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "plane", "travel", "fly"]
	},
	"1f69f": {
		"code_points": {
			"base": "1f69f",
			"non_fully_qualified": "1f69f",
			"decimal": "&#128671;"
		},
		"name": "suspension railway",
		"shortname": ":suspension_railway:",
		"category": "travel",
		"emoji_order": "1656",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f6a0": {
		"code_points": {
			"base": "1f6a0",
			"non_fully_qualified": "1f6a0",
			"decimal": "&#128672;"
		},
		"name": "mountain cableway",
		"shortname": ":mountain_cableway:",
		"category": "travel",
		"emoji_order": "1657",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f6a1": {
		"code_points": {
			"base": "1f6a1",
			"non_fully_qualified": "1f6a1",
			"decimal": "&#128673;"
		},
		"name": "aerial tramway",
		"shortname": ":aerial_tramway:",
		"category": "travel",
		"emoji_order": "1658",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "travel", "train"]
	},
	"1f680": {
		"code_points": {
			"base": "1f680",
			"non_fully_qualified": "1f680",
			"decimal": "&#128640;"
		},
		"name": "rocket",
		"shortname": ":rocket:",
		"category": "travel",
		"emoji_order": "1659",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "object", "space", "fly", "blast"]
	},
	"1f6f0": {
		"code_points": {
			"base": "1f6f0",
			"non_fully_qualified": "1f6f0",
			"fully_qualified": "1f6f0-fe0f",
			"decimal": "&#128752;"
		},
		"name": "satellite",
		"shortname": ":satellite_orbital:",
		"category": "travel",
		"emoji_order": "1660",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f6ce": {
		"code_points": {
			"base": "1f6ce",
			"non_fully_qualified": "1f6ce",
			"fully_qualified": "1f6ce-fe0f",
			"decimal": "&#128718;"
		},
		"name": "bellhop bell",
		"shortname": ":bellhop:",
		"category": "objects",
		"emoji_order": "1661",
		"shortname_alternates": [":bellhop_bell:"],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f6aa": {
		"code_points": {
			"base": "1f6aa",
			"non_fully_qualified": "1f6aa",
			"decimal": "&#128682;"
		},
		"name": "door",
		"shortname": ":door:",
		"category": "objects",
		"emoji_order": "1662",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f6cc": {
		"code_points": {
			"base": "1f6cc",
			"non_fully_qualified": "1f6cc",
			"decimal": "&#128716;"
		},
		"name": "sleeping accommodation",
		"shortname": ":sleeping_accommodation:",
		"category": "objects",
		"emoji_order": "1663",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["tired"]
	},
	"1f6cf": {
		"code_points": {
			"base": "1f6cf",
			"non_fully_qualified": "1f6cf",
			"fully_qualified": "1f6cf-fe0f",
			"decimal": "&#128719;"
		},
		"name": "bed",
		"shortname": ":bed:",
		"category": "objects",
		"emoji_order": "1669",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tired"]
	},
	"1f6cb": {
		"code_points": {
			"base": "1f6cb",
			"non_fully_qualified": "1f6cb",
			"fully_qualified": "1f6cb-fe0f",
			"decimal": "&#128715;"
		},
		"name": "couch and lamp",
		"shortname": ":couch:",
		"category": "objects",
		"emoji_order": "1670",
		"shortname_alternates": [":couch_and_lamp:"],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f6bd": {
		"code_points": {
			"base": "1f6bd",
			"non_fully_qualified": "1f6bd",
			"decimal": "&#128701;"
		},
		"name": "toilet",
		"shortname": ":toilet:",
		"category": "objects",
		"emoji_order": "1671",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "bathroom"]
	},
	"1f6bf": {
		"code_points": {
			"base": "1f6bf",
			"non_fully_qualified": "1f6bf",
			"decimal": "&#128703;"
		},
		"name": "shower",
		"shortname": ":shower:",
		"category": "objects",
		"emoji_order": "1672",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "bathroom"]
	},
	"1f6c0": {
		"code_points": {
			"base": "1f6c0",
			"non_fully_qualified": "1f6c0",
			"decimal": "&#128704;"
		},
		"name": "bath",
		"shortname": ":bath:",
		"category": "activity",
		"emoji_order": "1673",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["bathroom", "tired", "diversity", "steam"]
	},
	"1f6c0-1f3fb": {
		"code_points": {
			"base": "1f6c0-1f3fb",
			"non_fully_qualified": "1f6c0-1f3fb",
			"decimal": "&#128704;&#127995;"
		},
		"name": "bath tone 1",
		"shortname": ":bath_tone1:",
		"category": "activity",
		"emoji_order": "1674",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6c0-1f3fc": {
		"code_points": {
			"base": "1f6c0-1f3fc",
			"non_fully_qualified": "1f6c0-1f3fc",
			"decimal": "&#128704;&#127996;"
		},
		"name": "bath tone 2",
		"shortname": ":bath_tone2:",
		"category": "activity",
		"emoji_order": "1675",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6c0-1f3fd": {
		"code_points": {
			"base": "1f6c0-1f3fd",
			"non_fully_qualified": "1f6c0-1f3fd",
			"decimal": "&#128704;&#127997;"
		},
		"name": "bath tone 3",
		"shortname": ":bath_tone3:",
		"category": "activity",
		"emoji_order": "1676",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6c0-1f3fe": {
		"code_points": {
			"base": "1f6c0-1f3fe",
			"non_fully_qualified": "1f6c0-1f3fe",
			"decimal": "&#128704;&#127998;"
		},
		"name": "bath tone 4",
		"shortname": ":bath_tone4:",
		"category": "activity",
		"emoji_order": "1677",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6c0-1f3ff": {
		"code_points": {
			"base": "1f6c0-1f3ff",
			"non_fully_qualified": "1f6c0-1f3ff",
			"decimal": "&#128704;&#127999;"
		},
		"name": "bath tone 5",
		"shortname": ":bath_tone5:",
		"category": "activity",
		"emoji_order": "1678",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6c1": {
		"code_points": {
			"base": "1f6c1",
			"non_fully_qualified": "1f6c1",
			"decimal": "&#128705;"
		},
		"name": "bathtub",
		"shortname": ":bathtub:",
		"category": "objects",
		"emoji_order": "1679",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "bathroom", "tired", "steam"]
	},
	"231b": {
		"code_points": {
			"base": "231b",
			"non_fully_qualified": "231b",
			"fully_qualified": "231b-fe0f",
			"decimal": "&#8987;"
		},
		"name": "hourglass",
		"shortname": ":hourglass:",
		"category": "objects",
		"emoji_order": "1680",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "time"]
	},
	"23f3": {
		"code_points": {
			"base": "23f3",
			"non_fully_qualified": "23f3",
			"decimal": "&#9203;"
		},
		"name": "hourglass with flowing sand",
		"shortname": ":hourglass_flowing_sand:",
		"category": "objects",
		"emoji_order": "1681",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "time"]
	},
	"231a": {
		"code_points": {
			"base": "231a",
			"non_fully_qualified": "231a",
			"fully_qualified": "231a-fe0f",
			"decimal": "&#8986;"
		},
		"name": "watch",
		"shortname": ":watch:",
		"category": "objects",
		"emoji_order": "1682",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "time"]
	},
	"23f0": {
		"code_points": {
			"base": "23f0",
			"non_fully_qualified": "23f0",
			"decimal": "&#9200;"
		},
		"name": "alarm clock",
		"shortname": ":alarm_clock:",
		"category": "objects",
		"emoji_order": "1683",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "time"]
	},
	"23f1": {
		"code_points": {
			"base": "23f1",
			"non_fully_qualified": "23f1",
			"fully_qualified": "23f1-fe0f",
			"decimal": "&#9201;"
		},
		"name": "stopwatch",
		"shortname": ":stopwatch:",
		"category": "objects",
		"emoji_order": "1684",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "time"]
	},
	"23f2": {
		"code_points": {
			"base": "23f2",
			"non_fully_qualified": "23f2",
			"fully_qualified": "23f2-fe0f",
			"decimal": "&#9202;"
		},
		"name": "timer clock",
		"shortname": ":timer:",
		"category": "objects",
		"emoji_order": "1685",
		"shortname_alternates": [":timer_clock:"],
		"ascii": [],
		"keywords": ["object", "time"]
	},
	"1f570": {
		"code_points": {
			"base": "1f570",
			"non_fully_qualified": "1f570",
			"fully_qualified": "1f570-fe0f",
			"decimal": "&#128368;"
		},
		"name": "mantlepiece clock",
		"shortname": ":clock:",
		"category": "objects",
		"emoji_order": "1686",
		"shortname_alternates": [":mantlepiece_clock:"],
		"ascii": [],
		"keywords": ["object", "time"]
	},
	"1f55b": {
		"code_points": {
			"base": "1f55b",
			"non_fully_qualified": "1f55b",
			"decimal": "&#128347;"
		},
		"name": "clock face twelve oclock",
		"shortname": ":clock12:",
		"category": "symbols",
		"emoji_order": "1687",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f567": {
		"code_points": {
			"base": "1f567",
			"non_fully_qualified": "1f567",
			"decimal": "&#128359;"
		},
		"name": "clock face twelve-thirty",
		"shortname": ":clock1230:",
		"category": "symbols",
		"emoji_order": "1688",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f550": {
		"code_points": {
			"base": "1f550",
			"non_fully_qualified": "1f550",
			"decimal": "&#128336;"
		},
		"name": "clock face one oclock",
		"shortname": ":clock1:",
		"category": "symbols",
		"emoji_order": "1689",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f55c": {
		"code_points": {
			"base": "1f55c",
			"non_fully_qualified": "1f55c",
			"decimal": "&#128348;"
		},
		"name": "clock face one-thirty",
		"shortname": ":clock130:",
		"category": "symbols",
		"emoji_order": "1690",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f551": {
		"code_points": {
			"base": "1f551",
			"non_fully_qualified": "1f551",
			"decimal": "&#128337;"
		},
		"name": "clock face two oclock",
		"shortname": ":clock2:",
		"category": "symbols",
		"emoji_order": "1691",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f55d": {
		"code_points": {
			"base": "1f55d",
			"non_fully_qualified": "1f55d",
			"decimal": "&#128349;"
		},
		"name": "clock face two-thirty",
		"shortname": ":clock230:",
		"category": "symbols",
		"emoji_order": "1692",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f552": {
		"code_points": {
			"base": "1f552",
			"non_fully_qualified": "1f552",
			"decimal": "&#128338;"
		},
		"name": "clock face three oclock",
		"shortname": ":clock3:",
		"category": "symbols",
		"emoji_order": "1693",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f55e": {
		"code_points": {
			"base": "1f55e",
			"non_fully_qualified": "1f55e",
			"decimal": "&#128350;"
		},
		"name": "clock face three-thirty",
		"shortname": ":clock330:",
		"category": "symbols",
		"emoji_order": "1694",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f553": {
		"code_points": {
			"base": "1f553",
			"non_fully_qualified": "1f553",
			"decimal": "&#128339;"
		},
		"name": "clock face four oclock",
		"shortname": ":clock4:",
		"category": "symbols",
		"emoji_order": "1695",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f55f": {
		"code_points": {
			"base": "1f55f",
			"non_fully_qualified": "1f55f",
			"decimal": "&#128351;"
		},
		"name": "clock face four-thirty",
		"shortname": ":clock430:",
		"category": "symbols",
		"emoji_order": "1696",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f554": {
		"code_points": {
			"base": "1f554",
			"non_fully_qualified": "1f554",
			"decimal": "&#128340;"
		},
		"name": "clock face five oclock",
		"shortname": ":clock5:",
		"category": "symbols",
		"emoji_order": "1697",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f560": {
		"code_points": {
			"base": "1f560",
			"non_fully_qualified": "1f560",
			"decimal": "&#128352;"
		},
		"name": "clock face five-thirty",
		"shortname": ":clock530:",
		"category": "symbols",
		"emoji_order": "1698",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f555": {
		"code_points": {
			"base": "1f555",
			"non_fully_qualified": "1f555",
			"decimal": "&#128341;"
		},
		"name": "clock face six oclock",
		"shortname": ":clock6:",
		"category": "symbols",
		"emoji_order": "1699",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f561": {
		"code_points": {
			"base": "1f561",
			"non_fully_qualified": "1f561",
			"decimal": "&#128353;"
		},
		"name": "clock face six-thirty",
		"shortname": ":clock630:",
		"category": "symbols",
		"emoji_order": "1700",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f556": {
		"code_points": {
			"base": "1f556",
			"non_fully_qualified": "1f556",
			"decimal": "&#128342;"
		},
		"name": "clock face seven oclock",
		"shortname": ":clock7:",
		"category": "symbols",
		"emoji_order": "1701",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f562": {
		"code_points": {
			"base": "1f562",
			"non_fully_qualified": "1f562",
			"decimal": "&#128354;"
		},
		"name": "clock face seven-thirty",
		"shortname": ":clock730:",
		"category": "symbols",
		"emoji_order": "1702",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f557": {
		"code_points": {
			"base": "1f557",
			"non_fully_qualified": "1f557",
			"decimal": "&#128343;"
		},
		"name": "clock face eight oclock",
		"shortname": ":clock8:",
		"category": "symbols",
		"emoji_order": "1703",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f563": {
		"code_points": {
			"base": "1f563",
			"non_fully_qualified": "1f563",
			"decimal": "&#128355;"
		},
		"name": "clock face eight-thirty",
		"shortname": ":clock830:",
		"category": "symbols",
		"emoji_order": "1704",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f558": {
		"code_points": {
			"base": "1f558",
			"non_fully_qualified": "1f558",
			"decimal": "&#128344;"
		},
		"name": "clock face nine oclock",
		"shortname": ":clock9:",
		"category": "symbols",
		"emoji_order": "1705",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f564": {
		"code_points": {
			"base": "1f564",
			"non_fully_qualified": "1f564",
			"decimal": "&#128356;"
		},
		"name": "clock face nine-thirty",
		"shortname": ":clock930:",
		"category": "symbols",
		"emoji_order": "1706",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f559": {
		"code_points": {
			"base": "1f559",
			"non_fully_qualified": "1f559",
			"decimal": "&#128345;"
		},
		"name": "clock face ten oclock",
		"shortname": ":clock10:",
		"category": "symbols",
		"emoji_order": "1707",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f565": {
		"code_points": {
			"base": "1f565",
			"non_fully_qualified": "1f565",
			"decimal": "&#128357;"
		},
		"name": "clock face ten-thirty",
		"shortname": ":clock1030:",
		"category": "symbols",
		"emoji_order": "1708",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f55a": {
		"code_points": {
			"base": "1f55a",
			"non_fully_qualified": "1f55a",
			"decimal": "&#128346;"
		},
		"name": "clock face eleven oclock",
		"shortname": ":clock11:",
		"category": "symbols",
		"emoji_order": "1709",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f566": {
		"code_points": {
			"base": "1f566",
			"non_fully_qualified": "1f566",
			"decimal": "&#128358;"
		},
		"name": "clock face eleven-thirty",
		"shortname": ":clock1130:",
		"category": "symbols",
		"emoji_order": "1710",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "time"]
	},
	"1f311": {
		"code_points": {
			"base": "1f311",
			"non_fully_qualified": "1f311",
			"decimal": "&#127761;"
		},
		"name": "new moon symbol",
		"shortname": ":new_moon:",
		"category": "nature",
		"emoji_order": "1711",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f312": {
		"code_points": {
			"base": "1f312",
			"non_fully_qualified": "1f312",
			"decimal": "&#127762;"
		},
		"name": "waxing crescent moon symbol",
		"shortname": ":waxing_crescent_moon:",
		"category": "nature",
		"emoji_order": "1712",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f313": {
		"code_points": {
			"base": "1f313",
			"non_fully_qualified": "1f313",
			"decimal": "&#127763;"
		},
		"name": "first quarter moon symbol",
		"shortname": ":first_quarter_moon:",
		"category": "nature",
		"emoji_order": "1713",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f314": {
		"code_points": {
			"base": "1f314",
			"non_fully_qualified": "1f314",
			"decimal": "&#127764;"
		},
		"name": "waxing gibbous moon symbol",
		"shortname": ":waxing_gibbous_moon:",
		"category": "nature",
		"emoji_order": "1714",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f315": {
		"code_points": {
			"base": "1f315",
			"non_fully_qualified": "1f315",
			"decimal": "&#127765;"
		},
		"name": "full moon symbol",
		"shortname": ":full_moon:",
		"category": "nature",
		"emoji_order": "1715",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f316": {
		"code_points": {
			"base": "1f316",
			"non_fully_qualified": "1f316",
			"decimal": "&#127766;"
		},
		"name": "waning gibbous moon symbol",
		"shortname": ":waning_gibbous_moon:",
		"category": "nature",
		"emoji_order": "1716",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f317": {
		"code_points": {
			"base": "1f317",
			"non_fully_qualified": "1f317",
			"decimal": "&#127767;"
		},
		"name": "last quarter moon symbol",
		"shortname": ":last_quarter_moon:",
		"category": "nature",
		"emoji_order": "1717",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f318": {
		"code_points": {
			"base": "1f318",
			"non_fully_qualified": "1f318",
			"decimal": "&#127768;"
		},
		"name": "waning crescent moon symbol",
		"shortname": ":waning_crescent_moon:",
		"category": "nature",
		"emoji_order": "1718",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f319": {
		"code_points": {
			"base": "1f319",
			"non_fully_qualified": "1f319",
			"decimal": "&#127769;"
		},
		"name": "crescent moon",
		"shortname": ":crescent_moon:",
		"category": "nature",
		"emoji_order": "1719",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "goodnight", "moon"]
	},
	"1f31a": {
		"code_points": {
			"base": "1f31a",
			"non_fully_qualified": "1f31a",
			"decimal": "&#127770;"
		},
		"name": "new moon with face",
		"shortname": ":new_moon_with_face:",
		"category": "nature",
		"emoji_order": "1720",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "goodnight", "moon"]
	},
	"1f31b": {
		"code_points": {
			"base": "1f31b",
			"non_fully_qualified": "1f31b",
			"decimal": "&#127771;"
		},
		"name": "first quarter moon with face",
		"shortname": ":first_quarter_moon_with_face:",
		"category": "nature",
		"emoji_order": "1721",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f31c": {
		"code_points": {
			"base": "1f31c",
			"non_fully_qualified": "1f31c",
			"decimal": "&#127772;"
		},
		"name": "last quarter moon with face",
		"shortname": ":last_quarter_moon_with_face:",
		"category": "nature",
		"emoji_order": "1722",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "moon"]
	},
	"1f321": {
		"code_points": {
			"base": "1f321",
			"non_fully_qualified": "1f321",
			"fully_qualified": "1f321-fe0f",
			"decimal": "&#127777;"
		},
		"name": "thermometer",
		"shortname": ":thermometer:",
		"category": "objects",
		"emoji_order": "1723",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "science", "health", "hot"]
	},
	"2600": {
		"code_points": {
			"base": "2600",
			"non_fully_qualified": "2600",
			"fully_qualified": "2600-fe0f",
			"decimal": "&#9728;"
		},
		"name": "black sun with rays",
		"shortname": ":sunny:",
		"category": "nature",
		"emoji_order": "1724",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "sky", "day", "sun", "hot", "morning"]
	},
	"1f31d": {
		"code_points": {
			"base": "1f31d",
			"non_fully_qualified": "1f31d",
			"decimal": "&#127773;"
		},
		"name": "full moon with face",
		"shortname": ":full_moon_with_face:",
		"category": "nature",
		"emoji_order": "1725",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "goodnight", "moon"]
	},
	"1f31e": {
		"code_points": {
			"base": "1f31e",
			"non_fully_qualified": "1f31e",
			"decimal": "&#127774;"
		},
		"name": "sun with face",
		"shortname": ":sun_with_face:",
		"category": "nature",
		"emoji_order": "1726",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["sky", "day", "sun", "hump day", "morning"]
	},
	"2b50": {
		"code_points": {
			"base": "2b50",
			"non_fully_qualified": "2b50",
			"fully_qualified": "2b50-fe0f",
			"decimal": "&#11088;"
		},
		"name": "white medium star",
		"shortname": ":star:",
		"category": "nature",
		"emoji_order": "1727",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "star"]
	},
	"1f31f": {
		"code_points": {
			"base": "1f31f",
			"non_fully_qualified": "1f31f",
			"decimal": "&#127775;"
		},
		"name": "glowing star",
		"shortname": ":star2:",
		"category": "nature",
		"emoji_order": "1728",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky", "star"]
	},
	"1f320": {
		"code_points": {
			"base": "1f320",
			"non_fully_qualified": "1f320",
			"decimal": "&#127776;"
		},
		"name": "shooting star",
		"shortname": ":stars:",
		"category": "travel",
		"emoji_order": "1729",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space"]
	},
	"2601": {
		"code_points": {
			"base": "2601",
			"non_fully_qualified": "2601",
			"fully_qualified": "2601-fe0f",
			"decimal": "&#9729;"
		},
		"name": "cloud",
		"shortname": ":cloud:",
		"category": "nature",
		"emoji_order": "1730",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "sky", "cloud", "cold", "rain"]
	},
	"26c5": {
		"code_points": {
			"base": "26c5",
			"non_fully_qualified": "26c5",
			"fully_qualified": "26c5-fe0f",
			"decimal": "&#9925;"
		},
		"name": "sun behind cloud",
		"shortname": ":partly_sunny:",
		"category": "nature",
		"emoji_order": "1731",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "sky", "cloud", "sun"]
	},
	"26c8": {
		"code_points": {
			"base": "26c8",
			"non_fully_qualified": "26c8",
			"fully_qualified": "26c8-fe0f",
			"decimal": "&#9928;"
		},
		"name": "thunder cloud and rain",
		"shortname": ":thunder_cloud_rain:",
		"category": "nature",
		"emoji_order": "1732",
		"shortname_alternates": [":thunder_cloud_and_rain:"],
		"ascii": [],
		"keywords": ["weather", "sky", "cloud", "cold", "rain"]
	},
	"1f324": {
		"code_points": {
			"base": "1f324",
			"non_fully_qualified": "1f324",
			"fully_qualified": "1f324-fe0f",
			"decimal": "&#127780;"
		},
		"name": "white sun with small cloud",
		"shortname": ":white_sun_small_cloud:",
		"category": "nature",
		"emoji_order": "1733",
		"shortname_alternates": [":white_sun_with_small_cloud:"],
		"ascii": [],
		"keywords": ["weather", "sky", "cloud", "sun"]
	},
	"1f325": {
		"code_points": {
			"base": "1f325",
			"non_fully_qualified": "1f325",
			"fully_qualified": "1f325-fe0f",
			"decimal": "&#127781;"
		},
		"name": "white sun behind cloud",
		"shortname": ":white_sun_cloud:",
		"category": "nature",
		"emoji_order": "1734",
		"shortname_alternates": [":white_sun_behind_cloud:"],
		"ascii": [],
		"keywords": ["weather", "sky", "cloud", "cold", "sun"]
	},
	"1f326": {
		"code_points": {
			"base": "1f326",
			"non_fully_qualified": "1f326",
			"fully_qualified": "1f326-fe0f",
			"decimal": "&#127782;"
		},
		"name": "white sun behind cloud with rain",
		"shortname": ":white_sun_rain_cloud:",
		"category": "nature",
		"emoji_order": "1735",
		"shortname_alternates": [":white_sun_behind_cloud_with_rain:"],
		"ascii": [],
		"keywords": ["weather", "sky", "cloud", "cold", "rain", "sun"]
	},
	"1f327": {
		"code_points": {
			"base": "1f327",
			"non_fully_qualified": "1f327",
			"fully_qualified": "1f327-fe0f",
			"decimal": "&#127783;"
		},
		"name": "cloud with rain",
		"shortname": ":cloud_rain:",
		"category": "nature",
		"emoji_order": "1736",
		"shortname_alternates": [":cloud_with_rain:"],
		"ascii": [],
		"keywords": ["weather", "winter", "sky", "cloud", "cold", "rain"]
	},
	"1f328": {
		"code_points": {
			"base": "1f328",
			"non_fully_qualified": "1f328",
			"fully_qualified": "1f328-fe0f",
			"decimal": "&#127784;"
		},
		"name": "cloud with snow",
		"shortname": ":cloud_snow:",
		"category": "nature",
		"emoji_order": "1737",
		"shortname_alternates": [":cloud_with_snow:"],
		"ascii": [],
		"keywords": ["weather", "winter", "sky", "cloud", "cold", "snow"]
	},
	"1f329": {
		"code_points": {
			"base": "1f329",
			"non_fully_qualified": "1f329",
			"fully_qualified": "1f329-fe0f",
			"decimal": "&#127785;"
		},
		"name": "cloud with lightning",
		"shortname": ":cloud_lightning:",
		"category": "nature",
		"emoji_order": "1738",
		"shortname_alternates": [":cloud_with_lightning:"],
		"ascii": [],
		"keywords": ["weather", "sky", "cloud", "cold", "rain"]
	},
	"1f32a": {
		"code_points": {
			"base": "1f32a",
			"non_fully_qualified": "1f32a",
			"fully_qualified": "1f32a-fe0f",
			"decimal": "&#127786;"
		},
		"name": "cloud with tornado",
		"shortname": ":cloud_tornado:",
		"category": "nature",
		"emoji_order": "1739",
		"shortname_alternates": [":cloud_with_tornado:"],
		"ascii": [],
		"keywords": ["weather", "sky", "cold"]
	},
	"1f32b": {
		"code_points": {
			"base": "1f32b",
			"non_fully_qualified": "1f32b",
			"fully_qualified": "1f32b-fe0f",
			"decimal": "&#127787;"
		},
		"name": "fog",
		"shortname": ":fog:",
		"category": "nature",
		"emoji_order": "1740",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "sky", "cold"]
	},
	"1f32c": {
		"code_points": {
			"base": "1f32c",
			"non_fully_qualified": "1f32c",
			"fully_qualified": "1f32c-fe0f",
			"decimal": "&#127788;"
		},
		"name": "wind blowing face",
		"shortname": ":wind_blowing_face:",
		"category": "nature",
		"emoji_order": "1741",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "cold"]
	},
	"1f300": {
		"code_points": {
			"base": "1f300",
			"non_fully_qualified": "1f300",
			"decimal": "&#127744;"
		},
		"name": "cyclone",
		"shortname": ":cyclone:",
		"category": "symbols",
		"emoji_order": "1742",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "drugs"]
	},
	"1f308": {
		"code_points": {
			"base": "1f308",
			"non_fully_qualified": "1f308",
			"decimal": "&#127752;"
		},
		"name": "rainbow",
		"shortname": ":rainbow:",
		"category": "travel",
		"emoji_order": "1743",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "gay", "sky", "rain"]
	},
	"1f302": {
		"code_points": {
			"base": "1f302",
			"non_fully_qualified": "1f302",
			"decimal": "&#127746;"
		},
		"name": "closed umbrella",
		"shortname": ":closed_umbrella:",
		"category": "people",
		"emoji_order": "1744",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "sky", "rain", "accessories"]
	},
	"2602": {
		"code_points": {
			"base": "2602",
			"non_fully_qualified": "2602",
			"fully_qualified": "2602-fe0f",
			"decimal": "&#9730;"
		},
		"name": "umbrella",
		"shortname": ":umbrella2:",
		"category": "nature",
		"emoji_order": "1745",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "object", "sky", "cold"]
	},
	"2614": {
		"code_points": {
			"base": "2614",
			"non_fully_qualified": "2614",
			"fully_qualified": "2614-fe0f",
			"decimal": "&#9748;"
		},
		"name": "umbrella with rain drops",
		"shortname": ":umbrella:",
		"category": "nature",
		"emoji_order": "1746",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "sky", "cold", "rain"]
	},
	"26f1": {
		"code_points": {
			"base": "26f1",
			"non_fully_qualified": "26f1",
			"fully_qualified": "26f1-fe0f",
			"decimal": "&#9969;"
		},
		"name": "umbrella on ground",
		"shortname": ":beach_umbrella:",
		"category": "objects",
		"emoji_order": "1747",
		"shortname_alternates": [":umbrella_on_ground:"],
		"ascii": [],
		"keywords": ["travel", "vacation", "tropical"]
	},
	"26a1": {
		"code_points": {
			"base": "26a1",
			"non_fully_qualified": "26a1",
			"fully_qualified": "26a1-fe0f",
			"decimal": "&#9889;"
		},
		"name": "high voltage sign",
		"shortname": ":zap:",
		"category": "nature",
		"emoji_order": "1748",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "sky", "diarrhea"]
	},
	"2744": {
		"code_points": {
			"base": "2744",
			"non_fully_qualified": "2744",
			"fully_qualified": "2744-fe0f",
			"decimal": "&#10052;"
		},
		"name": "snowflake",
		"shortname": ":snowflake:",
		"category": "nature",
		"emoji_order": "1749",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "winter", "sky", "holidays", "cold", "snow"]
	},
	"2603": {
		"code_points": {
			"base": "2603",
			"non_fully_qualified": "2603",
			"fully_qualified": "2603-fe0f",
			"decimal": "&#9731;"
		},
		"name": "snowman",
		"shortname": ":snowman2:",
		"category": "nature",
		"emoji_order": "1750",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "winter", "holidays", "christmas", "cold", "snow"]
	},
	"26c4": {
		"code_points": {
			"base": "26c4",
			"non_fully_qualified": "26c4",
			"fully_qualified": "26c4-fe0f",
			"decimal": "&#9924;"
		},
		"name": "snowman without snow",
		"shortname": ":snowman:",
		"category": "nature",
		"emoji_order": "1751",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "winter", "holidays", "cold", "snow"]
	},
	"2604": {
		"code_points": {
			"base": "2604",
			"non_fully_qualified": "2604",
			"fully_qualified": "2604-fe0f",
			"decimal": "&#9732;"
		},
		"name": "comet",
		"shortname": ":comet:",
		"category": "nature",
		"emoji_order": "1752",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["space", "sky"]
	},
	"1f525": {
		"code_points": {
			"base": "1f525",
			"non_fully_qualified": "1f525",
			"decimal": "&#128293;"
		},
		"name": "fire",
		"shortname": ":fire:",
		"category": "nature",
		"emoji_order": "1753",
		"shortname_alternates": [":flame:"],
		"ascii": [],
		"keywords": ["wth", "hot"]
	},
	"1f4a7": {
		"code_points": {
			"base": "1f4a7",
			"non_fully_qualified": "1f4a7",
			"decimal": "&#128167;"
		},
		"name": "droplet",
		"shortname": ":droplet:",
		"category": "nature",
		"emoji_order": "1754",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "sky", "rain"]
	},
	"1f30a": {
		"code_points": {
			"base": "1f30a",
			"non_fully_qualified": "1f30a",
			"decimal": "&#127754;"
		},
		"name": "water wave",
		"shortname": ":ocean:",
		"category": "nature",
		"emoji_order": "1755",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["weather", "boat", "tropical", "swim"]
	},
	"1f383": {
		"code_points": {
			"base": "1f383",
			"non_fully_qualified": "1f383",
			"decimal": "&#127875;"
		},
		"name": "jack-o-lantern",
		"shortname": ":jack_o_lantern:",
		"category": "nature",
		"emoji_order": "1756",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["holidays", "halloween"]
	},
	"1f384": {
		"code_points": {
			"base": "1f384",
			"non_fully_qualified": "1f384",
			"decimal": "&#127876;"
		},
		"name": "christmas tree",
		"shortname": ":christmas_tree:",
		"category": "nature",
		"emoji_order": "1757",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["plant", "holidays", "christmas", "trees"]
	},
	"1f386": {
		"code_points": {
			"base": "1f386",
			"non_fully_qualified": "1f386",
			"decimal": "&#127878;"
		},
		"name": "fireworks",
		"shortname": ":fireworks:",
		"category": "travel",
		"emoji_order": "1758",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["parties"]
	},
	"1f387": {
		"code_points": {
			"base": "1f387",
			"non_fully_qualified": "1f387",
			"decimal": "&#127879;"
		},
		"name": "firework sparkler",
		"shortname": ":sparkler:",
		"category": "travel",
		"emoji_order": "1759",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["parties"]
	},
	"2728": {
		"code_points": {
			"base": "2728",
			"non_fully_qualified": "2728",
			"decimal": "&#10024;"
		},
		"name": "sparkles",
		"shortname": ":sparkles:",
		"category": "nature",
		"emoji_order": "1760",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["star", "girls night"]
	},
	"1f388": {
		"code_points": {
			"base": "1f388",
			"non_fully_qualified": "1f388",
			"decimal": "&#127880;"
		},
		"name": "balloon",
		"shortname": ":balloon:",
		"category": "objects",
		"emoji_order": "1761",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "birthday", "good", "parties"]
	},
	"1f389": {
		"code_points": {
			"base": "1f389",
			"non_fully_qualified": "1f389",
			"decimal": "&#127881;"
		},
		"name": "party popper",
		"shortname": ":tada:",
		"category": "objects",
		"emoji_order": "1762",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "birthday", "holidays", "cheers", "good", "girls night", "boys night", "parties"]
	},
	"1f38a": {
		"code_points": {
			"base": "1f38a",
			"non_fully_qualified": "1f38a",
			"decimal": "&#127882;"
		},
		"name": "confetti ball",
		"shortname": ":confetti_ball:",
		"category": "objects",
		"emoji_order": "1763",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "birthday", "holidays", "cheers", "girls night", "boys night", "parties"]
	},
	"1f38b": {
		"code_points": {
			"base": "1f38b",
			"non_fully_qualified": "1f38b",
			"decimal": "&#127883;"
		},
		"name": "tanabata tree",
		"shortname": ":tanabata_tree:",
		"category": "nature",
		"emoji_order": "1764",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant", "trees"]
	},
	"1f38d": {
		"code_points": {
			"base": "1f38d",
			"non_fully_qualified": "1f38d",
			"decimal": "&#127885;"
		},
		"name": "pine decoration",
		"shortname": ":bamboo:",
		"category": "nature",
		"emoji_order": "1765",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["nature", "plant"]
	},
	"1f38e": {
		"code_points": {
			"base": "1f38e",
			"non_fully_qualified": "1f38e",
			"decimal": "&#127886;"
		},
		"name": "japanese dolls",
		"shortname": ":dolls:",
		"category": "objects",
		"emoji_order": "1766",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "japan"]
	},
	"1f38f": {
		"code_points": {
			"base": "1f38f",
			"non_fully_qualified": "1f38f",
			"decimal": "&#127887;"
		},
		"name": "carp streamer",
		"shortname": ":flags:",
		"category": "objects",
		"emoji_order": "1767",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "japan"]
	},
	"1f390": {
		"code_points": {
			"base": "1f390",
			"non_fully_qualified": "1f390",
			"decimal": "&#127888;"
		},
		"name": "wind chime",
		"shortname": ":wind_chime:",
		"category": "objects",
		"emoji_order": "1768",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "japan"]
	},
	"1f391": {
		"code_points": {
			"base": "1f391",
			"non_fully_qualified": "1f391",
			"decimal": "&#127889;"
		},
		"name": "moon viewing ceremony",
		"shortname": ":rice_scene:",
		"category": "travel",
		"emoji_order": "1769",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["places", "space", "sky", "travel"]
	},
	"1f380": {
		"code_points": {
			"base": "1f380",
			"non_fully_qualified": "1f380",
			"decimal": "&#127872;"
		},
		"name": "ribbon",
		"shortname": ":ribbon:",
		"category": "objects",
		"emoji_order": "1770",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "gift", "birthday"]
	},
	"1f381": {
		"code_points": {
			"base": "1f381",
			"non_fully_qualified": "1f381",
			"decimal": "&#127873;"
		},
		"name": "wrapped present",
		"shortname": ":gift:",
		"category": "objects",
		"emoji_order": "1771",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "gift", "birthday", "holidays", "christmas", "parties"]
	},
	"1f397": {
		"code_points": {
			"base": "1f397",
			"non_fully_qualified": "1f397",
			"fully_qualified": "1f397-fe0f",
			"decimal": "&#127895;"
		},
		"name": "reminder ribbon",
		"shortname": ":reminder_ribbon:",
		"category": "activity",
		"emoji_order": "1772",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["award"]
	},
	"1f39f": {
		"code_points": {
			"base": "1f39f",
			"non_fully_qualified": "1f39f",
			"fully_qualified": "1f39f-fe0f",
			"decimal": "&#127903;"
		},
		"name": "admission tickets",
		"shortname": ":tickets:",
		"category": "activity",
		"emoji_order": "1773",
		"shortname_alternates": [":admission_tickets:"],
		"ascii": [],
		"keywords": ["theatre", "movie", "parties"]
	},
	"1f3ab": {
		"code_points": {
			"base": "1f3ab",
			"non_fully_qualified": "1f3ab",
			"decimal": "&#127915;"
		},
		"name": "ticket",
		"shortname": ":ticket:",
		"category": "activity",
		"emoji_order": "1774",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["theatre", "movie", "parties"]
	},
	"1f396": {
		"code_points": {
			"base": "1f396",
			"non_fully_qualified": "1f396",
			"fully_qualified": "1f396-fe0f",
			"decimal": "&#127894;"
		},
		"name": "military medal",
		"shortname": ":military_medal:",
		"category": "activity",
		"emoji_order": "1775",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "award", "win"]
	},
	"1f3c6": {
		"code_points": {
			"base": "1f3c6",
			"non_fully_qualified": "1f3c6",
			"decimal": "&#127942;"
		},
		"name": "trophy",
		"shortname": ":trophy:",
		"category": "activity",
		"emoji_order": "1776",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "game", "award", "win", "perfect", "parties"]
	},
	"1f3c5": {
		"code_points": {
			"base": "1f3c5",
			"non_fully_qualified": "1f3c5",
			"decimal": "&#127941;"
		},
		"name": "sports medal",
		"shortname": ":medal:",
		"category": "activity",
		"emoji_order": "1777",
		"shortname_alternates": [":sports_medal:"],
		"ascii": [],
		"keywords": ["object", "award", "sport", "win", "perfect"]
	},
	"1f947": {
		"code_points": {
			"base": "1f947",
			"non_fully_qualified": "1f947",
			"decimal": "&#129351;"
		},
		"name": "first place medal",
		"shortname": ":first_place:",
		"category": "activity",
		"emoji_order": "1778",
		"shortname_alternates": [":first_place_medal:"],
		"ascii": [],
		"keywords": []
	},
	"1f948": {
		"code_points": {
			"base": "1f948",
			"non_fully_qualified": "1f948",
			"decimal": "&#129352;"
		},
		"name": "second place medal",
		"shortname": ":second_place:",
		"category": "activity",
		"emoji_order": "1779",
		"shortname_alternates": [":second_place_medal:"],
		"ascii": [],
		"keywords": []
	},
	"1f949": {
		"code_points": {
			"base": "1f949",
			"non_fully_qualified": "1f949",
			"decimal": "&#129353;"
		},
		"name": "third place medal",
		"shortname": ":third_place:",
		"category": "activity",
		"emoji_order": "1780",
		"shortname_alternates": [":third_place_medal:"],
		"ascii": [],
		"keywords": []
	},
	"26bd": {
		"code_points": {
			"base": "26bd",
			"non_fully_qualified": "26bd",
			"fully_qualified": "26bd-fe0f",
			"decimal": "&#9917;"
		},
		"name": "soccer ball",
		"shortname": ":soccer:",
		"category": "activity",
		"emoji_order": "1781",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "ball", "sport", "soccer", "football"]
	},
	"26be": {
		"code_points": {
			"base": "26be",
			"non_fully_qualified": "26be",
			"fully_qualified": "26be-fe0f",
			"decimal": "&#9918;"
		},
		"name": "baseball",
		"shortname": ":baseball:",
		"category": "activity",
		"emoji_order": "1782",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "ball", "sport", "baseball"]
	},
	"1f3c0": {
		"code_points": {
			"base": "1f3c0",
			"non_fully_qualified": "1f3c0",
			"decimal": "&#127936;"
		},
		"name": "basketball and hoop",
		"shortname": ":basketball:",
		"category": "activity",
		"emoji_order": "1783",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "ball", "sport", "basketball"]
	},
	"1f3d0": {
		"code_points": {
			"base": "1f3d0",
			"non_fully_qualified": "1f3d0",
			"decimal": "&#127952;"
		},
		"name": "volleyball",
		"shortname": ":volleyball:",
		"category": "activity",
		"emoji_order": "1784",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "ball", "sport", "volleyball"]
	},
	"1f3c8": {
		"code_points": {
			"base": "1f3c8",
			"non_fully_qualified": "1f3c8",
			"decimal": "&#127944;"
		},
		"name": "american football",
		"shortname": ":football:",
		"category": "activity",
		"emoji_order": "1785",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["america", "game", "ball", "sport", "football"]
	},
	"1f3c9": {
		"code_points": {
			"base": "1f3c9",
			"non_fully_qualified": "1f3c9",
			"decimal": "&#127945;"
		},
		"name": "rugby football",
		"shortname": ":rugby_football:",
		"category": "activity",
		"emoji_order": "1786",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "sport", "football"]
	},
	"1f3be": {
		"code_points": {
			"base": "1f3be",
			"non_fully_qualified": "1f3be",
			"decimal": "&#127934;"
		},
		"name": "tennis racquet and ball",
		"shortname": ":tennis:",
		"category": "activity",
		"emoji_order": "1787",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "ball", "sport", "tennis"]
	},
	"1f3b1": {
		"code_points": {
			"base": "1f3b1",
			"non_fully_qualified": "1f3b1",
			"decimal": "&#127921;"
		},
		"name": "billiards",
		"shortname": ":8ball:",
		"category": "activity",
		"emoji_order": "1788",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "ball", "sport", "billiards", "luck", "boys night"]
	},
	"1f3b3": {
		"code_points": {
			"base": "1f3b3",
			"non_fully_qualified": "1f3b3",
			"decimal": "&#127923;"
		},
		"name": "bowling",
		"shortname": ":bowling:",
		"category": "activity",
		"emoji_order": "1789",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "ball", "sport", "boys night"]
	},
	"1f3cf": {
		"code_points": {
			"base": "1f3cf",
			"non_fully_qualified": "1f3cf",
			"decimal": "&#127951;"
		},
		"name": "cricket bat and ball",
		"shortname": ":cricket:",
		"category": "activity",
		"emoji_order": "1790",
		"shortname_alternates": [":cricket_bat_ball:"],
		"ascii": [],
		"keywords": ["ball", "sport", "cricket"]
	},
	"1f3d1": {
		"code_points": {
			"base": "1f3d1",
			"non_fully_qualified": "1f3d1",
			"decimal": "&#127953;"
		},
		"name": "field hockey stick and ball",
		"shortname": ":field_hockey:",
		"category": "activity",
		"emoji_order": "1791",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["ball", "sport", "hockey"]
	},
	"1f3d2": {
		"code_points": {
			"base": "1f3d2",
			"non_fully_qualified": "1f3d2",
			"decimal": "&#127954;"
		},
		"name": "ice hockey stick and puck",
		"shortname": ":hockey:",
		"category": "activity",
		"emoji_order": "1792",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "sport", "hockey"]
	},
	"1f3d3": {
		"code_points": {
			"base": "1f3d3",
			"non_fully_qualified": "1f3d3",
			"decimal": "&#127955;"
		},
		"name": "table tennis paddle and ball",
		"shortname": ":ping_pong:",
		"category": "activity",
		"emoji_order": "1793",
		"shortname_alternates": [":table_tennis:"],
		"ascii": [],
		"keywords": ["game", "ball", "sport", "ping pong"]
	},
	"1f3f8": {
		"code_points": {
			"base": "1f3f8",
			"non_fully_qualified": "1f3f8",
			"decimal": "&#127992;"
		},
		"name": "badminton racquet",
		"shortname": ":badminton:",
		"category": "activity",
		"emoji_order": "1794",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "sport", "badminton"]
	},
	"1f94a": {
		"code_points": {
			"base": "1f94a",
			"non_fully_qualified": "1f94a",
			"decimal": "&#129354;"
		},
		"name": "boxing glove",
		"shortname": ":boxing_glove:",
		"category": "activity",
		"emoji_order": "1795",
		"shortname_alternates": [":boxing_gloves:"],
		"ascii": [],
		"keywords": []
	},
	"1f94b": {
		"code_points": {
			"base": "1f94b",
			"non_fully_qualified": "1f94b",
			"decimal": "&#129355;"
		},
		"name": "martial arts uniform",
		"shortname": ":martial_arts_uniform:",
		"category": "activity",
		"emoji_order": "1796",
		"shortname_alternates": [":karate_uniform:"],
		"ascii": [],
		"keywords": []
	},
	"1f945": {
		"code_points": {
			"base": "1f945",
			"non_fully_qualified": "1f945",
			"decimal": "&#129349;"
		},
		"name": "goal net",
		"shortname": ":goal:",
		"category": "activity",
		"emoji_order": "1797",
		"shortname_alternates": [":goal_net:"],
		"ascii": [],
		"keywords": []
	},
	"1f3af": {
		"code_points": {
			"base": "1f3af",
			"non_fully_qualified": "1f3af",
			"decimal": "&#127919;"
		},
		"name": "direct hit",
		"shortname": ":dart:",
		"category": "activity",
		"emoji_order": "1798",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "sport", "boys night"]
	},
	"26f3": {
		"code_points": {
			"base": "26f3",
			"non_fully_qualified": "26f3",
			"fully_qualified": "26f3-fe0f",
			"decimal": "&#9971;"
		},
		"name": "flag in hole",
		"shortname": ":golf:",
		"category": "activity",
		"emoji_order": "1799",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["game", "ball", "vacation", "sport", "golf"]
	},
	"26f8": {
		"code_points": {
			"base": "26f8",
			"non_fully_qualified": "26f8",
			"fully_qualified": "26f8-fe0f",
			"decimal": "&#9976;"
		},
		"name": "ice skate",
		"shortname": ":ice_skate:",
		"category": "activity",
		"emoji_order": "1800",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["cold", "sport", "ice skating"]
	},
	"1f3a3": {
		"code_points": {
			"base": "1f3a3",
			"non_fully_qualified": "1f3a3",
			"decimal": "&#127907;"
		},
		"name": "fishing pole and fish",
		"shortname": ":fishing_pole_and_fish:",
		"category": "activity",
		"emoji_order": "1801",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["vacation", "sport", "fishing"]
	},
	"1f3bd": {
		"code_points": {
			"base": "1f3bd",
			"non_fully_qualified": "1f3bd",
			"decimal": "&#127933;"
		},
		"name": "running shirt with sash",
		"shortname": ":running_shirt_with_sash:",
		"category": "activity",
		"emoji_order": "1802",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["award"]
	},
	"1f3bf": {
		"code_points": {
			"base": "1f3bf",
			"non_fully_qualified": "1f3bf",
			"decimal": "&#127935;"
		},
		"name": "ski and ski boot",
		"shortname": ":ski:",
		"category": "activity",
		"emoji_order": "1803",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["cold", "sport", "skiing"]
	},
	"1f3ae": {
		"code_points": {
			"base": "1f3ae",
			"non_fully_qualified": "1f3ae",
			"decimal": "&#127918;"
		},
		"name": "video game",
		"shortname": ":video_game:",
		"category": "activity",
		"emoji_order": "1804",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "game", "boys night"]
	},
	"1f579": {
		"code_points": {
			"base": "1f579",
			"non_fully_qualified": "1f579",
			"fully_qualified": "1f579-fe0f",
			"decimal": "&#128377;"
		},
		"name": "joystick",
		"shortname": ":joystick:",
		"category": "objects",
		"emoji_order": "1805",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "game", "boys night"]
	},
	"1f3b2": {
		"code_points": {
			"base": "1f3b2",
			"non_fully_qualified": "1f3b2",
			"decimal": "&#127922;"
		},
		"name": "game die",
		"shortname": ":game_die:",
		"category": "activity",
		"emoji_order": "1806",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "game", "boys night"]
	},
	"2660": {
		"code_points": {
			"base": "2660",
			"non_fully_qualified": "2660",
			"fully_qualified": "2660-fe0f",
			"decimal": "&spades;"
		},
		"name": "black spade suit",
		"shortname": ":spades:",
		"category": "symbols",
		"emoji_order": "1807",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "game"]
	},
	"2665": {
		"code_points": {
			"base": "2665",
			"non_fully_qualified": "2665",
			"fully_qualified": "2665-fe0f",
			"decimal": "&hearts;"
		},
		"name": "black heart suit",
		"shortname": ":hearts:",
		"category": "symbols",
		"emoji_order": "1808",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol", "game"]
	},
	"2666": {
		"code_points": {
			"base": "2666",
			"non_fully_qualified": "2666",
			"fully_qualified": "2666-fe0f",
			"decimal": "&diams;"
		},
		"name": "black diamond suit",
		"shortname": ":diamonds:",
		"category": "symbols",
		"emoji_order": "1809",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "game"]
	},
	"2663": {
		"code_points": {
			"base": "2663",
			"non_fully_qualified": "2663",
			"fully_qualified": "2663-fe0f",
			"decimal": "&clubs;"
		},
		"name": "black club suit",
		"shortname": ":clubs:",
		"category": "symbols",
		"emoji_order": "1810",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "game"]
	},
	"1f0cf": {
		"code_points": {
			"base": "1f0cf",
			"non_fully_qualified": "1f0cf",
			"decimal": "&#127183;"
		},
		"name": "playing card black joker",
		"shortname": ":black_joker:",
		"category": "symbols",
		"emoji_order": "1811",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "symbol", "game"]
	},
	"1f004": {
		"code_points": {
			"base": "1f004",
			"non_fully_qualified": "1f004",
			"fully_qualified": "1f004-fe0f",
			"decimal": "&#126980;"
		},
		"name": "mahjong tile red dragon",
		"shortname": ":mahjong:",
		"category": "symbols",
		"emoji_order": "1812",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "symbol", "game"]
	},
	"1f3b4": {
		"code_points": {
			"base": "1f3b4",
			"non_fully_qualified": "1f3b4",
			"decimal": "&#127924;"
		},
		"name": "flower playing cards",
		"shortname": ":flower_playing_cards:",
		"category": "symbols",
		"emoji_order": "1813",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "symbol"]
	},
	"1f507": {
		"code_points": {
			"base": "1f507",
			"non_fully_qualified": "1f507",
			"decimal": "&#128263;"
		},
		"name": "speaker with cancellation stroke",
		"shortname": ":mute:",
		"category": "symbols",
		"emoji_order": "1814",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["alarm", "symbol"]
	},
	"1f508": {
		"code_points": {
			"base": "1f508",
			"non_fully_qualified": "1f508",
			"decimal": "&#128264;"
		},
		"name": "speaker",
		"shortname": ":speaker:",
		"category": "symbols",
		"emoji_order": "1815",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["alarm", "symbol"]
	},
	"1f509": {
		"code_points": {
			"base": "1f509",
			"non_fully_qualified": "1f509",
			"decimal": "&#128265;"
		},
		"name": "speaker with one sound wave",
		"shortname": ":sound:",
		"category": "symbols",
		"emoji_order": "1816",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["alarm", "symbol"]
	},
	"1f50a": {
		"code_points": {
			"base": "1f50a",
			"non_fully_qualified": "1f50a",
			"decimal": "&#128266;"
		},
		"name": "speaker with three sound waves",
		"shortname": ":loud_sound:",
		"category": "symbols",
		"emoji_order": "1817",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["alarm", "symbol"]
	},
	"1f4e2": {
		"code_points": {
			"base": "1f4e2",
			"non_fully_qualified": "1f4e2",
			"decimal": "&#128226;"
		},
		"name": "public address loudspeaker",
		"shortname": ":loudspeaker:",
		"category": "symbols",
		"emoji_order": "1818",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "alarm", "symbol"]
	},
	"1f4e3": {
		"code_points": {
			"base": "1f4e3",
			"non_fully_qualified": "1f4e3",
			"decimal": "&#128227;"
		},
		"name": "cheering megaphone",
		"shortname": ":mega:",
		"category": "symbols",
		"emoji_order": "1819",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "sport"]
	},
	"1f4ef": {
		"code_points": {
			"base": "1f4ef",
			"non_fully_qualified": "1f4ef",
			"decimal": "&#128239;"
		},
		"name": "postal horn",
		"shortname": ":postal_horn:",
		"category": "objects",
		"emoji_order": "1820",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f514": {
		"code_points": {
			"base": "1f514",
			"non_fully_qualified": "1f514",
			"decimal": "&#128276;"
		},
		"name": "bell",
		"shortname": ":bell:",
		"category": "symbols",
		"emoji_order": "1821",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "alarm", "symbol"]
	},
	"1f515": {
		"code_points": {
			"base": "1f515",
			"non_fully_qualified": "1f515",
			"decimal": "&#128277;"
		},
		"name": "bell with cancellation stroke",
		"shortname": ":no_bell:",
		"category": "symbols",
		"emoji_order": "1822",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["alarm", "symbol"]
	},
	"1f3bc": {
		"code_points": {
			"base": "1f3bc",
			"non_fully_qualified": "1f3bc",
			"decimal": "&#127932;"
		},
		"name": "musical score",
		"shortname": ":musical_score:",
		"category": "activity",
		"emoji_order": "1823",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments"]
	},
	"1f3b5": {
		"code_points": {
			"base": "1f3b5",
			"non_fully_qualified": "1f3b5",
			"decimal": "&#127925;"
		},
		"name": "musical note",
		"shortname": ":musical_note:",
		"category": "symbols",
		"emoji_order": "1824",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments", "symbol"]
	},
	"1f3b6": {
		"code_points": {
			"base": "1f3b6",
			"non_fully_qualified": "1f3b6",
			"decimal": "&#127926;"
		},
		"name": "multiple musical notes",
		"shortname": ":notes:",
		"category": "symbols",
		"emoji_order": "1825",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments", "symbol"]
	},
	"1f399": {
		"code_points": {
			"base": "1f399",
			"non_fully_qualified": "1f399",
			"fully_qualified": "1f399-fe0f",
			"decimal": "&#127897;"
		},
		"name": "studio microphone",
		"shortname": ":microphone2:",
		"category": "objects",
		"emoji_order": "1826",
		"shortname_alternates": [":studio_microphone:"],
		"ascii": [],
		"keywords": ["electronics", "object"]
	},
	"1f39a": {
		"code_points": {
			"base": "1f39a",
			"non_fully_qualified": "1f39a",
			"fully_qualified": "1f39a-fe0f",
			"decimal": "&#127898;"
		},
		"name": "level slider",
		"shortname": ":level_slider:",
		"category": "objects",
		"emoji_order": "1827",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f39b": {
		"code_points": {
			"base": "1f39b",
			"non_fully_qualified": "1f39b",
			"fully_qualified": "1f39b-fe0f",
			"decimal": "&#127899;"
		},
		"name": "control knobs",
		"shortname": ":control_knobs:",
		"category": "objects",
		"emoji_order": "1828",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["time"]
	},
	"1f3a4": {
		"code_points": {
			"base": "1f3a4",
			"non_fully_qualified": "1f3a4",
			"decimal": "&#127908;"
		},
		"name": "microphone",
		"shortname": ":microphone:",
		"category": "activity",
		"emoji_order": "1829",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments"]
	},
	"1f3a7": {
		"code_points": {
			"base": "1f3a7",
			"non_fully_qualified": "1f3a7",
			"decimal": "&#127911;"
		},
		"name": "headphone",
		"shortname": ":headphones:",
		"category": "activity",
		"emoji_order": "1830",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments"]
	},
	"1f4fb": {
		"code_points": {
			"base": "1f4fb",
			"non_fully_qualified": "1f4fb",
			"decimal": "&#128251;"
		},
		"name": "radio",
		"shortname": ":radio:",
		"category": "objects",
		"emoji_order": "1831",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics"]
	},
	"1f3b7": {
		"code_points": {
			"base": "1f3b7",
			"non_fully_qualified": "1f3b7",
			"decimal": "&#127927;"
		},
		"name": "saxophone",
		"shortname": ":saxophone:",
		"category": "activity",
		"emoji_order": "1832",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments"]
	},
	"1f3b8": {
		"code_points": {
			"base": "1f3b8",
			"non_fully_qualified": "1f3b8",
			"decimal": "&#127928;"
		},
		"name": "guitar",
		"shortname": ":guitar:",
		"category": "activity",
		"emoji_order": "1833",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments"]
	},
	"1f3b9": {
		"code_points": {
			"base": "1f3b9",
			"non_fully_qualified": "1f3b9",
			"decimal": "&#127929;"
		},
		"name": "musical keyboard",
		"shortname": ":musical_keyboard:",
		"category": "activity",
		"emoji_order": "1834",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments"]
	},
	"1f3ba": {
		"code_points": {
			"base": "1f3ba",
			"non_fully_qualified": "1f3ba",
			"decimal": "&#127930;"
		},
		"name": "trumpet",
		"shortname": ":trumpet:",
		"category": "activity",
		"emoji_order": "1835",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments"]
	},
	"1f3bb": {
		"code_points": {
			"base": "1f3bb",
			"non_fully_qualified": "1f3bb",
			"decimal": "&#127931;"
		},
		"name": "violin",
		"shortname": ":violin:",
		"category": "activity",
		"emoji_order": "1836",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["instruments", "sarcastic"]
	},
	"1f941": {
		"code_points": {
			"base": "1f941",
			"non_fully_qualified": "1f941",
			"decimal": "&#129345;"
		},
		"name": "drum with drumsticks",
		"shortname": ":drum:",
		"category": "activity",
		"emoji_order": "1837",
		"shortname_alternates": [":drum_with_drumsticks:"],
		"ascii": [],
		"keywords": []
	},
	"1f4f1": {
		"code_points": {
			"base": "1f4f1",
			"non_fully_qualified": "1f4f1",
			"decimal": "&#128241;"
		},
		"name": "mobile phone",
		"shortname": ":iphone:",
		"category": "objects",
		"emoji_order": "1838",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "phone", "selfie"]
	},
	"1f4f2": {
		"code_points": {
			"base": "1f4f2",
			"non_fully_qualified": "1f4f2",
			"decimal": "&#128242;"
		},
		"name": "mobile phone with rightwards arrow at left",
		"shortname": ":calling:",
		"category": "objects",
		"emoji_order": "1839",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "phone", "selfie"]
	},
	"260e": {
		"code_points": {
			"base": "260e",
			"non_fully_qualified": "260e",
			"fully_qualified": "260e-fe0f",
			"decimal": "&#9742;"
		},
		"name": "black telephone",
		"shortname": ":telephone:",
		"category": "objects",
		"emoji_order": "1840",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "phone"]
	},
	"1f4de": {
		"code_points": {
			"base": "1f4de",
			"non_fully_qualified": "1f4de",
			"decimal": "&#128222;"
		},
		"name": "telephone receiver",
		"shortname": ":telephone_receiver:",
		"category": "objects",
		"emoji_order": "1841",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "phone"]
	},
	"1f4df": {
		"code_points": {
			"base": "1f4df",
			"non_fully_qualified": "1f4df",
			"decimal": "&#128223;"
		},
		"name": "pager",
		"shortname": ":pager:",
		"category": "objects",
		"emoji_order": "1842",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "work"]
	},
	"1f4e0": {
		"code_points": {
			"base": "1f4e0",
			"non_fully_qualified": "1f4e0",
			"decimal": "&#128224;"
		},
		"name": "fax machine",
		"shortname": ":fax:",
		"category": "objects",
		"emoji_order": "1843",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "work", "office"]
	},
	"1f50b": {
		"code_points": {
			"base": "1f50b",
			"non_fully_qualified": "1f50b",
			"decimal": "&#128267;"
		},
		"name": "battery",
		"shortname": ":battery:",
		"category": "objects",
		"emoji_order": "1844",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f50c": {
		"code_points": {
			"base": "1f50c",
			"non_fully_qualified": "1f50c",
			"decimal": "&#128268;"
		},
		"name": "electric plug",
		"shortname": ":electric_plug:",
		"category": "objects",
		"emoji_order": "1845",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics"]
	},
	"1f4bb": {
		"code_points": {
			"base": "1f4bb",
			"non_fully_qualified": "1f4bb",
			"decimal": "&#128187;"
		},
		"name": "personal computer",
		"shortname": ":computer:",
		"category": "objects",
		"emoji_order": "1846",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "work", "office"]
	},
	"1f5a5": {
		"code_points": {
			"base": "1f5a5",
			"non_fully_qualified": "1f5a5",
			"fully_qualified": "1f5a5-fe0f",
			"decimal": "&#128421;"
		},
		"name": "desktop computer",
		"shortname": ":desktop:",
		"category": "objects",
		"emoji_order": "1847",
		"shortname_alternates": [":desktop_computer:"],
		"ascii": [],
		"keywords": ["electronics", "work"]
	},
	"1f5a8": {
		"code_points": {
			"base": "1f5a8",
			"non_fully_qualified": "1f5a8",
			"fully_qualified": "1f5a8-fe0f",
			"decimal": "&#128424;"
		},
		"name": "printer",
		"shortname": ":printer:",
		"category": "objects",
		"emoji_order": "1848",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "work", "office"]
	},
	"2328": {
		"code_points": {
			"base": "2328",
			"non_fully_qualified": "2328",
			"fully_qualified": "2328-fe0f",
			"decimal": "&#9000;"
		},
		"name": "keyboard",
		"shortname": ":keyboard:",
		"category": "objects",
		"emoji_order": "1849",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "work", "office"]
	},
	"1f5b1": {
		"code_points": {
			"base": "1f5b1",
			"non_fully_qualified": "1f5b1",
			"fully_qualified": "1f5b1-fe0f",
			"decimal": "&#128433;"
		},
		"name": "three button mouse",
		"shortname": ":mouse_three_button:",
		"category": "objects",
		"emoji_order": "1850",
		"shortname_alternates": [":three_button_mouse:"],
		"ascii": [],
		"keywords": ["electronics", "work", "game", "office"]
	},
	"1f5b2": {
		"code_points": {
			"base": "1f5b2",
			"non_fully_qualified": "1f5b2",
			"fully_qualified": "1f5b2-fe0f",
			"decimal": "&#128434;"
		},
		"name": "trackball",
		"shortname": ":trackball:",
		"category": "objects",
		"emoji_order": "1851",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "work", "game", "office"]
	},
	"1f4bd": {
		"code_points": {
			"base": "1f4bd",
			"non_fully_qualified": "1f4bd",
			"decimal": "&#128189;"
		},
		"name": "minidisc",
		"shortname": ":minidisc:",
		"category": "objects",
		"emoji_order": "1852",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics"]
	},
	"1f4be": {
		"code_points": {
			"base": "1f4be",
			"non_fully_qualified": "1f4be",
			"decimal": "&#128190;"
		},
		"name": "floppy disk",
		"shortname": ":floppy_disk:",
		"category": "objects",
		"emoji_order": "1853",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "office"]
	},
	"1f4bf": {
		"code_points": {
			"base": "1f4bf",
			"non_fully_qualified": "1f4bf",
			"decimal": "&#128191;"
		},
		"name": "optical disc",
		"shortname": ":cd:",
		"category": "objects",
		"emoji_order": "1854",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics"]
	},
	"1f4c0": {
		"code_points": {
			"base": "1f4c0",
			"non_fully_qualified": "1f4c0",
			"decimal": "&#128192;"
		},
		"name": "dvd",
		"shortname": ":dvd:",
		"category": "objects",
		"emoji_order": "1855",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics"]
	},
	"1f3a5": {
		"code_points": {
			"base": "1f3a5",
			"non_fully_qualified": "1f3a5",
			"decimal": "&#127909;"
		},
		"name": "movie camera",
		"shortname": ":movie_camera:",
		"category": "objects",
		"emoji_order": "1856",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "camera", "movie"]
	},
	"1f39e": {
		"code_points": {
			"base": "1f39e",
			"non_fully_qualified": "1f39e",
			"fully_qualified": "1f39e-fe0f",
			"decimal": "&#127902;"
		},
		"name": "film frames",
		"shortname": ":film_frames:",
		"category": "objects",
		"emoji_order": "1857",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "camera", "movie"]
	},
	"1f4fd": {
		"code_points": {
			"base": "1f4fd",
			"non_fully_qualified": "1f4fd",
			"fully_qualified": "1f4fd-fe0f",
			"decimal": "&#128253;"
		},
		"name": "film projector",
		"shortname": ":projector:",
		"category": "objects",
		"emoji_order": "1858",
		"shortname_alternates": [":film_projector:"],
		"ascii": [],
		"keywords": ["object", "camera", "movie"]
	},
	"1f3ac": {
		"code_points": {
			"base": "1f3ac",
			"non_fully_qualified": "1f3ac",
			"decimal": "&#127916;"
		},
		"name": "clapper board",
		"shortname": ":clapper:",
		"category": "activity",
		"emoji_order": "1859",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["movie"]
	},
	"1f4fa": {
		"code_points": {
			"base": "1f4fa",
			"non_fully_qualified": "1f4fa",
			"decimal": "&#128250;"
		},
		"name": "television",
		"shortname": ":tv:",
		"category": "objects",
		"emoji_order": "1860",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics"]
	},
	"1f4f7": {
		"code_points": {
			"base": "1f4f7",
			"non_fully_qualified": "1f4f7",
			"decimal": "&#128247;"
		},
		"name": "camera",
		"shortname": ":camera:",
		"category": "objects",
		"emoji_order": "1861",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "camera", "selfie"]
	},
	"1f4f8": {
		"code_points": {
			"base": "1f4f8",
			"non_fully_qualified": "1f4f8",
			"decimal": "&#128248;"
		},
		"name": "camera with flash",
		"shortname": ":camera_with_flash:",
		"category": "objects",
		"emoji_order": "1862",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "camera"]
	},
	"1f4f9": {
		"code_points": {
			"base": "1f4f9",
			"non_fully_qualified": "1f4f9",
			"decimal": "&#128249;"
		},
		"name": "video camera",
		"shortname": ":video_camera:",
		"category": "objects",
		"emoji_order": "1863",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "camera", "movie"]
	},
	"1f4fc": {
		"code_points": {
			"base": "1f4fc",
			"non_fully_qualified": "1f4fc",
			"decimal": "&#128252;"
		},
		"name": "videocassette",
		"shortname": ":vhs:",
		"category": "objects",
		"emoji_order": "1864",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics"]
	},
	"1f50d": {
		"code_points": {
			"base": "1f50d",
			"non_fully_qualified": "1f50d",
			"decimal": "&#128269;"
		},
		"name": "left-pointing magnifying glass",
		"shortname": ":mag:",
		"category": "objects",
		"emoji_order": "1865",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f50e": {
		"code_points": {
			"base": "1f50e",
			"non_fully_qualified": "1f50e",
			"decimal": "&#128270;"
		},
		"name": "right-pointing magnifying glass",
		"shortname": ":mag_right:",
		"category": "objects",
		"emoji_order": "1866",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f52c": {
		"code_points": {
			"base": "1f52c",
			"non_fully_qualified": "1f52c",
			"decimal": "&#128300;"
		},
		"name": "microscope",
		"shortname": ":microscope:",
		"category": "objects",
		"emoji_order": "1867",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "science"]
	},
	"1f52d": {
		"code_points": {
			"base": "1f52d",
			"non_fully_qualified": "1f52d",
			"decimal": "&#128301;"
		},
		"name": "telescope",
		"shortname": ":telescope:",
		"category": "objects",
		"emoji_order": "1868",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "space", "science"]
	},
	"1f4e1": {
		"code_points": {
			"base": "1f4e1",
			"non_fully_qualified": "1f4e1",
			"decimal": "&#128225;"
		},
		"name": "satellite antenna",
		"shortname": ":satellite:",
		"category": "objects",
		"emoji_order": "1869",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f56f": {
		"code_points": {
			"base": "1f56f",
			"non_fully_qualified": "1f56f",
			"fully_qualified": "1f56f-fe0f",
			"decimal": "&#128367;"
		},
		"name": "candle",
		"shortname": ":candle:",
		"category": "objects",
		"emoji_order": "1870",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f4a1": {
		"code_points": {
			"base": "1f4a1",
			"non_fully_qualified": "1f4a1",
			"decimal": "&#128161;"
		},
		"name": "electric light bulb",
		"shortname": ":bulb:",
		"category": "objects",
		"emoji_order": "1871",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "science"]
	},
	"1f526": {
		"code_points": {
			"base": "1f526",
			"non_fully_qualified": "1f526",
			"decimal": "&#128294;"
		},
		"name": "electric torch",
		"shortname": ":flashlight:",
		"category": "objects",
		"emoji_order": "1872",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "object"]
	},
	"1f3ee": {
		"code_points": {
			"base": "1f3ee",
			"non_fully_qualified": "1f3ee",
			"decimal": "&#127982;"
		},
		"name": "izakaya lantern",
		"shortname": ":izakaya_lantern:",
		"category": "objects",
		"emoji_order": "1873",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "japan"]
	},
	"1f4d4": {
		"code_points": {
			"base": "1f4d4",
			"non_fully_qualified": "1f4d4",
			"decimal": "&#128212;"
		},
		"name": "notebook with decorative cover",
		"shortname": ":notebook_with_decorative_cover:",
		"category": "objects",
		"emoji_order": "1874",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"1f4d5": {
		"code_points": {
			"base": "1f4d5",
			"non_fully_qualified": "1f4d5",
			"decimal": "&#128213;"
		},
		"name": "closed book",
		"shortname": ":closed_book:",
		"category": "objects",
		"emoji_order": "1875",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write", "book"]
	},
	"1f4d6": {
		"code_points": {
			"base": "1f4d6",
			"non_fully_qualified": "1f4d6",
			"decimal": "&#128214;"
		},
		"name": "open book",
		"shortname": ":book:",
		"category": "objects",
		"emoji_order": "1876",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write", "book"]
	},
	"1f4d7": {
		"code_points": {
			"base": "1f4d7",
			"non_fully_qualified": "1f4d7",
			"decimal": "&#128215;"
		},
		"name": "green book",
		"shortname": ":green_book:",
		"category": "objects",
		"emoji_order": "1877",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "book"]
	},
	"1f4d8": {
		"code_points": {
			"base": "1f4d8",
			"non_fully_qualified": "1f4d8",
			"decimal": "&#128216;"
		},
		"name": "blue book",
		"shortname": ":blue_book:",
		"category": "objects",
		"emoji_order": "1878",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write", "book"]
	},
	"1f4d9": {
		"code_points": {
			"base": "1f4d9",
			"non_fully_qualified": "1f4d9",
			"decimal": "&#128217;"
		},
		"name": "orange book",
		"shortname": ":orange_book:",
		"category": "objects",
		"emoji_order": "1879",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write", "book"]
	},
	"1f4da": {
		"code_points": {
			"base": "1f4da",
			"non_fully_qualified": "1f4da",
			"decimal": "&#128218;"
		},
		"name": "books",
		"shortname": ":books:",
		"category": "objects",
		"emoji_order": "1880",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write", "book"]
	},
	"1f4d3": {
		"code_points": {
			"base": "1f4d3",
			"non_fully_qualified": "1f4d3",
			"decimal": "&#128211;"
		},
		"name": "notebook",
		"shortname": ":notebook:",
		"category": "objects",
		"emoji_order": "1881",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"1f4d2": {
		"code_points": {
			"base": "1f4d2",
			"non_fully_qualified": "1f4d2",
			"decimal": "&#128210;"
		},
		"name": "ledger",
		"shortname": ":ledger:",
		"category": "objects",
		"emoji_order": "1882",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"1f4c3": {
		"code_points": {
			"base": "1f4c3",
			"non_fully_qualified": "1f4c3",
			"decimal": "&#128195;"
		},
		"name": "page with curl",
		"shortname": ":page_with_curl:",
		"category": "objects",
		"emoji_order": "1883",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["office", "write"]
	},
	"1f4dc": {
		"code_points": {
			"base": "1f4dc",
			"non_fully_qualified": "1f4dc",
			"decimal": "&#128220;"
		},
		"name": "scroll",
		"shortname": ":scroll:",
		"category": "objects",
		"emoji_order": "1884",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office"]
	},
	"1f4c4": {
		"code_points": {
			"base": "1f4c4",
			"non_fully_qualified": "1f4c4",
			"decimal": "&#128196;"
		},
		"name": "page facing up",
		"shortname": ":page_facing_up:",
		"category": "objects",
		"emoji_order": "1885",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work", "office", "write"]
	},
	"1f4f0": {
		"code_points": {
			"base": "1f4f0",
			"non_fully_qualified": "1f4f0",
			"decimal": "&#128240;"
		},
		"name": "newspaper",
		"shortname": ":newspaper:",
		"category": "objects",
		"emoji_order": "1886",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["office", "write"]
	},
	"1f5de": {
		"code_points": {
			"base": "1f5de",
			"non_fully_qualified": "1f5de",
			"fully_qualified": "1f5de-fe0f",
			"decimal": "&#128478;"
		},
		"name": "rolled-up newspaper",
		"shortname": ":newspaper2:",
		"category": "objects",
		"emoji_order": "1887",
		"shortname_alternates": [":rolled_up_newspaper:"],
		"ascii": [],
		"keywords": ["office", "write"]
	},
	"1f4d1": {
		"code_points": {
			"base": "1f4d1",
			"non_fully_qualified": "1f4d1",
			"decimal": "&#128209;"
		},
		"name": "bookmark tabs",
		"shortname": ":bookmark_tabs:",
		"category": "objects",
		"emoji_order": "1888",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["office", "write"]
	},
	"1f516": {
		"code_points": {
			"base": "1f516",
			"non_fully_qualified": "1f516",
			"decimal": "&#128278;"
		},
		"name": "bookmark",
		"shortname": ":bookmark:",
		"category": "objects",
		"emoji_order": "1889",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "book"]
	},
	"1f3f7": {
		"code_points": {
			"base": "1f3f7",
			"non_fully_qualified": "1f3f7",
			"fully_qualified": "1f3f7-fe0f",
			"decimal": "&#127991;"
		},
		"name": "label",
		"shortname": ":label:",
		"category": "objects",
		"emoji_order": "1890",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f4b0": {
		"code_points": {
			"base": "1f4b0",
			"non_fully_qualified": "1f4b0",
			"decimal": "&#128176;"
		},
		"name": "money bag",
		"shortname": ":moneybag:",
		"category": "objects",
		"emoji_order": "1891",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["bag", "award", "money"]
	},
	"1f4b4": {
		"code_points": {
			"base": "1f4b4",
			"non_fully_qualified": "1f4b4",
			"decimal": "&#128180;"
		},
		"name": "banknote with yen sign",
		"shortname": ":yen:",
		"category": "objects",
		"emoji_order": "1892",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["money"]
	},
	"1f4b5": {
		"code_points": {
			"base": "1f4b5",
			"non_fully_qualified": "1f4b5",
			"decimal": "&#128181;"
		},
		"name": "banknote with dollar sign",
		"shortname": ":dollar:",
		"category": "objects",
		"emoji_order": "1893",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["money"]
	},
	"1f4b6": {
		"code_points": {
			"base": "1f4b6",
			"non_fully_qualified": "1f4b6",
			"decimal": "&#128182;"
		},
		"name": "banknote with euro sign",
		"shortname": ":euro:",
		"category": "objects",
		"emoji_order": "1894",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["money"]
	},
	"1f4b7": {
		"code_points": {
			"base": "1f4b7",
			"non_fully_qualified": "1f4b7",
			"decimal": "&#128183;"
		},
		"name": "banknote with pound sign",
		"shortname": ":pound:",
		"category": "objects",
		"emoji_order": "1895",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["money"]
	},
	"1f4b8": {
		"code_points": {
			"base": "1f4b8",
			"non_fully_qualified": "1f4b8",
			"decimal": "&#128184;"
		},
		"name": "money with wings",
		"shortname": ":money_with_wings:",
		"category": "objects",
		"emoji_order": "1896",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["money", "boys night"]
	},
	"1f4b3": {
		"code_points": {
			"base": "1f4b3",
			"non_fully_qualified": "1f4b3",
			"decimal": "&#128179;"
		},
		"name": "credit card",
		"shortname": ":credit_card:",
		"category": "objects",
		"emoji_order": "1897",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "money", "boys night"]
	},
	"1f4b9": {
		"code_points": {
			"base": "1f4b9",
			"non_fully_qualified": "1f4b9",
			"decimal": "&#128185;"
		},
		"name": "chart with upwards trend and yen sign",
		"shortname": ":chart:",
		"category": "symbols",
		"emoji_order": "1898",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "money"]
	},
	"1f4b1": {
		"code_points": {
			"base": "1f4b1",
			"non_fully_qualified": "1f4b1",
			"decimal": "&#128177;"
		},
		"name": "currency exchange",
		"shortname": ":currency_exchange:",
		"category": "symbols",
		"emoji_order": "1899",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "money"]
	},
	"1f4b2": {
		"code_points": {
			"base": "1f4b2",
			"non_fully_qualified": "1f4b2",
			"decimal": "&#128178;"
		},
		"name": "heavy dollar sign",
		"shortname": ":heavy_dollar_sign:",
		"category": "symbols",
		"emoji_order": "1900",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["math", "symbol", "money"]
	},
	"2709": {
		"code_points": {
			"base": "2709",
			"non_fully_qualified": "2709",
			"fully_qualified": "2709-fe0f",
			"decimal": "&#9993;"
		},
		"name": "envelope",
		"shortname": ":envelope:",
		"category": "objects",
		"emoji_order": "1901",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"1f4e7": {
		"code_points": {
			"base": "1f4e7",
			"non_fully_qualified": "1f4e7",
			"decimal": "&#128231;"
		},
		"name": "e-mail symbol",
		"shortname": ":e-mail:",
		"category": "objects",
		"emoji_order": "1902",
		"shortname_alternates": [":email:"],
		"ascii": [],
		"keywords": ["office"]
	},
	"1f4e8": {
		"code_points": {
			"base": "1f4e8",
			"non_fully_qualified": "1f4e8",
			"decimal": "&#128232;"
		},
		"name": "incoming envelope",
		"shortname": ":incoming_envelope:",
		"category": "objects",
		"emoji_order": "1903",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f4e9": {
		"code_points": {
			"base": "1f4e9",
			"non_fully_qualified": "1f4e9",
			"decimal": "&#128233;"
		},
		"name": "envelope with downwards arrow above",
		"shortname": ":envelope_with_arrow:",
		"category": "objects",
		"emoji_order": "1904",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office"]
	},
	"1f4e4": {
		"code_points": {
			"base": "1f4e4",
			"non_fully_qualified": "1f4e4",
			"decimal": "&#128228;"
		},
		"name": "outbox tray",
		"shortname": ":outbox_tray:",
		"category": "objects",
		"emoji_order": "1905",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work", "office"]
	},
	"1f4e5": {
		"code_points": {
			"base": "1f4e5",
			"non_fully_qualified": "1f4e5",
			"decimal": "&#128229;"
		},
		"name": "inbox tray",
		"shortname": ":inbox_tray:",
		"category": "objects",
		"emoji_order": "1906",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work", "office"]
	},
	"1f4e6": {
		"code_points": {
			"base": "1f4e6",
			"non_fully_qualified": "1f4e6",
			"decimal": "&#128230;"
		},
		"name": "package",
		"shortname": ":package:",
		"category": "objects",
		"emoji_order": "1907",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "gift", "office"]
	},
	"1f4eb": {
		"code_points": {
			"base": "1f4eb",
			"non_fully_qualified": "1f4eb",
			"decimal": "&#128235;"
		},
		"name": "closed mailbox with raised flag",
		"shortname": ":mailbox:",
		"category": "objects",
		"emoji_order": "1908",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f4ea": {
		"code_points": {
			"base": "1f4ea",
			"non_fully_qualified": "1f4ea",
			"decimal": "&#128234;"
		},
		"name": "closed mailbox with lowered flag",
		"shortname": ":mailbox_closed:",
		"category": "objects",
		"emoji_order": "1909",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office"]
	},
	"1f4ec": {
		"code_points": {
			"base": "1f4ec",
			"non_fully_qualified": "1f4ec",
			"decimal": "&#128236;"
		},
		"name": "open mailbox with raised flag",
		"shortname": ":mailbox_with_mail:",
		"category": "objects",
		"emoji_order": "1910",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f4ed": {
		"code_points": {
			"base": "1f4ed",
			"non_fully_qualified": "1f4ed",
			"decimal": "&#128237;"
		},
		"name": "open mailbox with lowered flag",
		"shortname": ":mailbox_with_no_mail:",
		"category": "objects",
		"emoji_order": "1911",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f4ee": {
		"code_points": {
			"base": "1f4ee",
			"non_fully_qualified": "1f4ee",
			"decimal": "&#128238;"
		},
		"name": "postbox",
		"shortname": ":postbox:",
		"category": "objects",
		"emoji_order": "1912",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f5f3": {
		"code_points": {
			"base": "1f5f3",
			"non_fully_qualified": "1f5f3",
			"fully_qualified": "1f5f3-fe0f",
			"decimal": "&#128499;"
		},
		"name": "ballot box with ballot",
		"shortname": ":ballot_box:",
		"category": "objects",
		"emoji_order": "1913",
		"shortname_alternates": [":ballot_box_with_ballot:"],
		"ascii": [],
		"keywords": ["object", "office"]
	},
	"270f": {
		"code_points": {
			"base": "270f",
			"non_fully_qualified": "270f",
			"fully_qualified": "270f-fe0f",
			"decimal": "&#9999;"
		},
		"name": "pencil",
		"shortname": ":pencil2:",
		"category": "objects",
		"emoji_order": "1914",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"2712": {
		"code_points": {
			"base": "2712",
			"non_fully_qualified": "2712",
			"fully_qualified": "2712-fe0f",
			"decimal": "&#10002;"
		},
		"name": "black nib",
		"shortname": ":black_nib:",
		"category": "objects",
		"emoji_order": "1915",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"1f58b": {
		"code_points": {
			"base": "1f58b",
			"non_fully_qualified": "1f58b",
			"fully_qualified": "1f58b-fe0f",
			"decimal": "&#128395;"
		},
		"name": "lower left fountain pen",
		"shortname": ":pen_fountain:",
		"category": "objects",
		"emoji_order": "1916",
		"shortname_alternates": [":lower_left_fountain_pen:"],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"1f58a": {
		"code_points": {
			"base": "1f58a",
			"non_fully_qualified": "1f58a",
			"fully_qualified": "1f58a-fe0f",
			"decimal": "&#128394;"
		},
		"name": "lower left ballpoint pen",
		"shortname": ":pen_ballpoint:",
		"category": "objects",
		"emoji_order": "1917",
		"shortname_alternates": [":lower_left_ballpoint_pen:"],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"1f58c": {
		"code_points": {
			"base": "1f58c",
			"non_fully_qualified": "1f58c",
			"fully_qualified": "1f58c-fe0f",
			"decimal": "&#128396;"
		},
		"name": "lower left paintbrush",
		"shortname": ":paintbrush:",
		"category": "objects",
		"emoji_order": "1918",
		"shortname_alternates": [":lower_left_paintbrush:"],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"1f58d": {
		"code_points": {
			"base": "1f58d",
			"non_fully_qualified": "1f58d",
			"fully_qualified": "1f58d-fe0f",
			"decimal": "&#128397;"
		},
		"name": "lower left crayon",
		"shortname": ":crayon:",
		"category": "objects",
		"emoji_order": "1919",
		"shortname_alternates": [":lower_left_crayon:"],
		"ascii": [],
		"keywords": ["object", "office", "write"]
	},
	"1f4dd": {
		"code_points": {
			"base": "1f4dd",
			"non_fully_qualified": "1f4dd",
			"decimal": "&#128221;"
		},
		"name": "memo",
		"shortname": ":pencil:",
		"category": "objects",
		"emoji_order": "1920",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work", "office", "write"]
	},
	"1f4bc": {
		"code_points": {
			"base": "1f4bc",
			"non_fully_qualified": "1f4bc",
			"decimal": "&#128188;"
		},
		"name": "briefcase",
		"shortname": ":briefcase:",
		"category": "people",
		"emoji_order": "1921",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["bag", "work", "accessories", "nutcase", "job"]
	},
	"1f4c1": {
		"code_points": {
			"base": "1f4c1",
			"non_fully_qualified": "1f4c1",
			"decimal": "&#128193;"
		},
		"name": "file folder",
		"shortname": ":file_folder:",
		"category": "objects",
		"emoji_order": "1922",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work", "office"]
	},
	"1f4c2": {
		"code_points": {
			"base": "1f4c2",
			"non_fully_qualified": "1f4c2",
			"decimal": "&#128194;"
		},
		"name": "open file folder",
		"shortname": ":open_file_folder:",
		"category": "objects",
		"emoji_order": "1923",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work", "office"]
	},
	"1f5c2": {
		"code_points": {
			"base": "1f5c2",
			"non_fully_qualified": "1f5c2",
			"fully_qualified": "1f5c2-fe0f",
			"decimal": "&#128450;"
		},
		"name": "card index dividers",
		"shortname": ":dividers:",
		"category": "objects",
		"emoji_order": "1924",
		"shortname_alternates": [":card_index_dividers:"],
		"ascii": [],
		"keywords": ["work", "office"]
	},
	"1f4c5": {
		"code_points": {
			"base": "1f4c5",
			"non_fully_qualified": "1f4c5",
			"decimal": "&#128197;"
		},
		"name": "calendar",
		"shortname": ":date:",
		"category": "objects",
		"emoji_order": "1925",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office"]
	},
	"1f4c6": {
		"code_points": {
			"base": "1f4c6",
			"non_fully_qualified": "1f4c6",
			"decimal": "&#128198;"
		},
		"name": "tear-off calendar",
		"shortname": ":calendar:",
		"category": "objects",
		"emoji_order": "1926",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office"]
	},
	"1f5d2": {
		"code_points": {
			"base": "1f5d2",
			"non_fully_qualified": "1f5d2",
			"fully_qualified": "1f5d2-fe0f",
			"decimal": "&#128466;"
		},
		"name": "spiral note pad",
		"shortname": ":notepad_spiral:",
		"category": "objects",
		"emoji_order": "1927",
		"shortname_alternates": [":spiral_note_pad:"],
		"ascii": [],
		"keywords": ["work", "office", "write"]
	},
	"1f5d3": {
		"code_points": {
			"base": "1f5d3",
			"non_fully_qualified": "1f5d3",
			"fully_qualified": "1f5d3-fe0f",
			"decimal": "&#128467;"
		},
		"name": "spiral calendar pad",
		"shortname": ":calendar_spiral:",
		"category": "objects",
		"emoji_order": "1928",
		"shortname_alternates": [":spiral_calendar_pad:"],
		"ascii": [],
		"keywords": ["object", "office"]
	},
	"1f4c7": {
		"code_points": {
			"base": "1f4c7",
			"non_fully_qualified": "1f4c7",
			"decimal": "&#128199;"
		},
		"name": "card index",
		"shortname": ":card_index:",
		"category": "objects",
		"emoji_order": "1929",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "work", "office"]
	},
	"1f4c8": {
		"code_points": {
			"base": "1f4c8",
			"non_fully_qualified": "1f4c8",
			"decimal": "&#128200;"
		},
		"name": "chart with upwards trend",
		"shortname": ":chart_with_upwards_trend:",
		"category": "objects",
		"emoji_order": "1930",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work", "office"]
	},
	"1f4c9": {
		"code_points": {
			"base": "1f4c9",
			"non_fully_qualified": "1f4c9",
			"decimal": "&#128201;"
		},
		"name": "chart with downwards trend",
		"shortname": ":chart_with_downwards_trend:",
		"category": "objects",
		"emoji_order": "1931",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work", "office"]
	},
	"1f4ca": {
		"code_points": {
			"base": "1f4ca",
			"non_fully_qualified": "1f4ca",
			"decimal": "&#128202;"
		},
		"name": "bar chart",
		"shortname": ":bar_chart:",
		"category": "objects",
		"emoji_order": "1932",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work", "office"]
	},
	"1f4cb": {
		"code_points": {
			"base": "1f4cb",
			"non_fully_qualified": "1f4cb",
			"decimal": "&#128203;"
		},
		"name": "clipboard",
		"shortname": ":clipboard:",
		"category": "objects",
		"emoji_order": "1933",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "work", "office", "write"]
	},
	"1f4cc": {
		"code_points": {
			"base": "1f4cc",
			"non_fully_qualified": "1f4cc",
			"decimal": "&#128204;"
		},
		"name": "pushpin",
		"shortname": ":pushpin:",
		"category": "objects",
		"emoji_order": "1934",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office"]
	},
	"1f4cd": {
		"code_points": {
			"base": "1f4cd",
			"non_fully_qualified": "1f4cd",
			"decimal": "&#128205;"
		},
		"name": "round pushpin",
		"shortname": ":round_pushpin:",
		"category": "objects",
		"emoji_order": "1935",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "office"]
	},
	"1f4ce": {
		"code_points": {
			"base": "1f4ce",
			"non_fully_qualified": "1f4ce",
			"decimal": "&#128206;"
		},
		"name": "paperclip",
		"shortname": ":paperclip:",
		"category": "objects",
		"emoji_order": "1936",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "work", "office"]
	},
	"1f587": {
		"code_points": {
			"base": "1f587",
			"non_fully_qualified": "1f587",
			"fully_qualified": "1f587-fe0f",
			"decimal": "&#128391;"
		},
		"name": "linked paperclips",
		"shortname": ":paperclips:",
		"category": "objects",
		"emoji_order": "1937",
		"shortname_alternates": [":linked_paperclips:"],
		"ascii": [],
		"keywords": ["object", "work", "office"]
	},
	"1f4cf": {
		"code_points": {
			"base": "1f4cf",
			"non_fully_qualified": "1f4cf",
			"decimal": "&#128207;"
		},
		"name": "straight ruler",
		"shortname": ":straight_ruler:",
		"category": "objects",
		"emoji_order": "1938",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tool", "office"]
	},
	"1f4d0": {
		"code_points": {
			"base": "1f4d0",
			"non_fully_qualified": "1f4d0",
			"decimal": "&#128208;"
		},
		"name": "triangular ruler",
		"shortname": ":triangular_ruler:",
		"category": "objects",
		"emoji_order": "1939",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tool", "office"]
	},
	"2702": {
		"code_points": {
			"base": "2702",
			"non_fully_qualified": "2702",
			"fully_qualified": "2702-fe0f",
			"decimal": "&#9986;"
		},
		"name": "black scissors",
		"shortname": ":scissors:",
		"category": "objects",
		"emoji_order": "1940",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tool", "weapon", "office"]
	},
	"1f5c3": {
		"code_points": {
			"base": "1f5c3",
			"non_fully_qualified": "1f5c3",
			"fully_qualified": "1f5c3-fe0f",
			"decimal": "&#128451;"
		},
		"name": "card file box",
		"shortname": ":card_box:",
		"category": "objects",
		"emoji_order": "1941",
		"shortname_alternates": [":card_file_box:"],
		"ascii": [],
		"keywords": ["object", "work", "office"]
	},
	"1f5c4": {
		"code_points": {
			"base": "1f5c4",
			"non_fully_qualified": "1f5c4",
			"fully_qualified": "1f5c4-fe0f",
			"decimal": "&#128452;"
		},
		"name": "file cabinet",
		"shortname": ":file_cabinet:",
		"category": "objects",
		"emoji_order": "1942",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "work", "office"]
	},
	"1f5d1": {
		"code_points": {
			"base": "1f5d1",
			"non_fully_qualified": "1f5d1",
			"fully_qualified": "1f5d1-fe0f",
			"decimal": "&#128465;"
		},
		"name": "wastebasket",
		"shortname": ":wastebasket:",
		"category": "objects",
		"emoji_order": "1943",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "work"]
	},
	"1f512": {
		"code_points": {
			"base": "1f512",
			"non_fully_qualified": "1f512",
			"decimal": "&#128274;"
		},
		"name": "lock",
		"shortname": ":lock:",
		"category": "objects",
		"emoji_order": "1944",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "lock"]
	},
	"1f513": {
		"code_points": {
			"base": "1f513",
			"non_fully_qualified": "1f513",
			"decimal": "&#128275;"
		},
		"name": "open lock",
		"shortname": ":unlock:",
		"category": "objects",
		"emoji_order": "1945",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "lock"]
	},
	"1f50f": {
		"code_points": {
			"base": "1f50f",
			"non_fully_qualified": "1f50f",
			"decimal": "&#128271;"
		},
		"name": "lock with ink pen",
		"shortname": ":lock_with_ink_pen:",
		"category": "objects",
		"emoji_order": "1946",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "lock"]
	},
	"1f510": {
		"code_points": {
			"base": "1f510",
			"non_fully_qualified": "1f510",
			"decimal": "&#128272;"
		},
		"name": "closed lock with key",
		"shortname": ":closed_lock_with_key:",
		"category": "objects",
		"emoji_order": "1947",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "lock"]
	},
	"1f511": {
		"code_points": {
			"base": "1f511",
			"non_fully_qualified": "1f511",
			"decimal": "&#128273;"
		},
		"name": "key",
		"shortname": ":key:",
		"category": "objects",
		"emoji_order": "1948",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "lock"]
	},
	"1f5dd": {
		"code_points": {
			"base": "1f5dd",
			"non_fully_qualified": "1f5dd",
			"fully_qualified": "1f5dd-fe0f",
			"decimal": "&#128477;"
		},
		"name": "old key",
		"shortname": ":key2:",
		"category": "objects",
		"emoji_order": "1949",
		"shortname_alternates": [":old_key:"],
		"ascii": [],
		"keywords": ["object", "lock"]
	},
	"1f528": {
		"code_points": {
			"base": "1f528",
			"non_fully_qualified": "1f528",
			"decimal": "&#128296;"
		},
		"name": "hammer",
		"shortname": ":hammer:",
		"category": "objects",
		"emoji_order": "1950",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tool", "weapon"]
	},
	"26cf": {
		"code_points": {
			"base": "26cf",
			"non_fully_qualified": "26cf",
			"fully_qualified": "26cf-fe0f",
			"decimal": "&#9935;"
		},
		"name": "pick",
		"shortname": ":pick:",
		"category": "objects",
		"emoji_order": "1951",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tool", "weapon"]
	},
	"2692": {
		"code_points": {
			"base": "2692",
			"non_fully_qualified": "2692",
			"fully_qualified": "2692-fe0f",
			"decimal": "&#9874;"
		},
		"name": "hammer and pick",
		"shortname": ":hammer_pick:",
		"category": "objects",
		"emoji_order": "1952",
		"shortname_alternates": [":hammer_and_pick:"],
		"ascii": [],
		"keywords": ["object", "tool", "weapon"]
	},
	"1f6e0": {
		"code_points": {
			"base": "1f6e0",
			"non_fully_qualified": "1f6e0",
			"fully_qualified": "1f6e0-fe0f",
			"decimal": "&#128736;"
		},
		"name": "hammer and wrench",
		"shortname": ":tools:",
		"category": "objects",
		"emoji_order": "1953",
		"shortname_alternates": [":hammer_and_wrench:"],
		"ascii": [],
		"keywords": ["object", "tool"]
	},
	"1f5e1": {
		"code_points": {
			"base": "1f5e1",
			"non_fully_qualified": "1f5e1",
			"fully_qualified": "1f5e1-fe0f",
			"decimal": "&#128481;"
		},
		"name": "dagger knife",
		"shortname": ":dagger:",
		"category": "objects",
		"emoji_order": "1954",
		"shortname_alternates": [":dagger_knife:"],
		"ascii": [],
		"keywords": ["object", "weapon"]
	},
	"2694": {
		"code_points": {
			"base": "2694",
			"non_fully_qualified": "2694",
			"fully_qualified": "2694-fe0f",
			"decimal": "&#9876;"
		},
		"name": "crossed swords",
		"shortname": ":crossed_swords:",
		"category": "objects",
		"emoji_order": "1955",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "weapon"]
	},
	"1f52b": {
		"code_points": {
			"base": "1f52b",
			"non_fully_qualified": "1f52b",
			"decimal": "&#128299;"
		},
		"name": "pistol",
		"shortname": ":gun:",
		"category": "objects",
		"emoji_order": "1956",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "weapon", "dead", "gun", "sarcastic"]
	},
	"1f3f9": {
		"code_points": {
			"base": "1f3f9",
			"non_fully_qualified": "1f3f9",
			"decimal": "&#127993;"
		},
		"name": "bow and arrow",
		"shortname": ":bow_and_arrow:",
		"category": "activity",
		"emoji_order": "1957",
		"shortname_alternates": [":archery:"],
		"ascii": [],
		"keywords": ["weapon", "sport"]
	},
	"1f6e1": {
		"code_points": {
			"base": "1f6e1",
			"non_fully_qualified": "1f6e1",
			"fully_qualified": "1f6e1-fe0f",
			"decimal": "&#128737;"
		},
		"name": "shield",
		"shortname": ":shield:",
		"category": "objects",
		"emoji_order": "1958",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f527": {
		"code_points": {
			"base": "1f527",
			"non_fully_qualified": "1f527",
			"decimal": "&#128295;"
		},
		"name": "wrench",
		"shortname": ":wrench:",
		"category": "objects",
		"emoji_order": "1959",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tool"]
	},
	"1f529": {
		"code_points": {
			"base": "1f529",
			"non_fully_qualified": "1f529",
			"decimal": "&#128297;"
		},
		"name": "nut and bolt",
		"shortname": ":nut_and_bolt:",
		"category": "objects",
		"emoji_order": "1960",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tool", "nutcase"]
	},
	"2699": {
		"code_points": {
			"base": "2699",
			"non_fully_qualified": "2699",
			"fully_qualified": "2699-fe0f",
			"decimal": "&#9881;"
		},
		"name": "gear",
		"shortname": ":gear:",
		"category": "objects",
		"emoji_order": "1961",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tool"]
	},
	"1f5dc": {
		"code_points": {
			"base": "1f5dc",
			"non_fully_qualified": "1f5dc",
			"fully_qualified": "1f5dc-fe0f",
			"decimal": "&#128476;"
		},
		"name": "compression",
		"shortname": ":compression:",
		"category": "objects",
		"emoji_order": "1962",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2697": {
		"code_points": {
			"base": "2697",
			"non_fully_qualified": "2697",
			"fully_qualified": "2697-fe0f",
			"decimal": "&#9879;"
		},
		"name": "alembic",
		"shortname": ":alembic:",
		"category": "objects",
		"emoji_order": "1963",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "science"]
	},
	"2696": {
		"code_points": {
			"base": "2696",
			"non_fully_qualified": "2696",
			"fully_qualified": "2696-fe0f",
			"decimal": "&#9878;"
		},
		"name": "scales",
		"shortname": ":scales:",
		"category": "objects",
		"emoji_order": "1964",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f517": {
		"code_points": {
			"base": "1f517",
			"non_fully_qualified": "1f517",
			"decimal": "&#128279;"
		},
		"name": "link symbol",
		"shortname": ":link:",
		"category": "objects",
		"emoji_order": "1965",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "office"]
	},
	"26d3": {
		"code_points": {
			"base": "26d3",
			"non_fully_qualified": "26d3",
			"fully_qualified": "26d3-fe0f",
			"decimal": "&#9939;"
		},
		"name": "chains",
		"shortname": ":chains:",
		"category": "objects",
		"emoji_order": "1966",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "tool"]
	},
	"1f489": {
		"code_points": {
			"base": "1f489",
			"non_fully_qualified": "1f489",
			"decimal": "&#128137;"
		},
		"name": "syringe",
		"shortname": ":syringe:",
		"category": "objects",
		"emoji_order": "1967",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "weapon", "health", "drugs"]
	},
	"1f48a": {
		"code_points": {
			"base": "1f48a",
			"non_fully_qualified": "1f48a",
			"decimal": "&#128138;"
		},
		"name": "pill",
		"shortname": ":pill:",
		"category": "objects",
		"emoji_order": "1968",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "health", "drugs"]
	},
	"1f6ac": {
		"code_points": {
			"base": "1f6ac",
			"non_fully_qualified": "1f6ac",
			"decimal": "&#128684;"
		},
		"name": "smoking symbol",
		"shortname": ":smoking:",
		"category": "objects",
		"emoji_order": "1969",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "drugs", "smoking"]
	},
	"26b0": {
		"code_points": {
			"base": "26b0",
			"non_fully_qualified": "26b0",
			"fully_qualified": "26b0-fe0f",
			"decimal": "&#9904;"
		},
		"name": "coffin",
		"shortname": ":coffin:",
		"category": "objects",
		"emoji_order": "1970",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "dead", "rip"]
	},
	"26b1": {
		"code_points": {
			"base": "26b1",
			"non_fully_qualified": "26b1",
			"fully_qualified": "26b1-fe0f",
			"decimal": "&#9905;"
		},
		"name": "funeral urn",
		"shortname": ":urn:",
		"category": "objects",
		"emoji_order": "1971",
		"shortname_alternates": [":funeral_urn:"],
		"ascii": [],
		"keywords": ["object", "dead", "rip"]
	},
	"1f5ff": {
		"code_points": {
			"base": "1f5ff",
			"non_fully_qualified": "1f5ff",
			"decimal": "&#128511;"
		},
		"name": "moyai",
		"shortname": ":moyai:",
		"category": "objects",
		"emoji_order": "1972",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["travel", "vacation"]
	},
	"1f6e2": {
		"code_points": {
			"base": "1f6e2",
			"non_fully_qualified": "1f6e2",
			"fully_qualified": "1f6e2-fe0f",
			"decimal": "&#128738;"
		},
		"name": "oil drum",
		"shortname": ":oil:",
		"category": "objects",
		"emoji_order": "1973",
		"shortname_alternates": [":oil_drum:"],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f52e": {
		"code_points": {
			"base": "1f52e",
			"non_fully_qualified": "1f52e",
			"decimal": "&#128302;"
		},
		"name": "crystal ball",
		"shortname": ":crystal_ball:",
		"category": "objects",
		"emoji_order": "1974",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "ball"]
	},
	"1f6d2": {
		"code_points": {
			"base": "1f6d2",
			"non_fully_qualified": "1f6d2",
			"decimal": "&#128722;"
		},
		"name": "shopping trolley",
		"shortname": ":shopping_cart:",
		"category": "objects",
		"emoji_order": "1975",
		"shortname_alternates": [":shopping_trolley:"],
		"ascii": [],
		"keywords": []
	},
	"1f3e7": {
		"code_points": {
			"base": "1f3e7",
			"non_fully_qualified": "1f3e7",
			"decimal": "&#127975;"
		},
		"name": "automated teller machine",
		"shortname": ":atm:",
		"category": "symbols",
		"emoji_order": "1976",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["electronics", "symbol", "money"]
	},
	"1f6ae": {
		"code_points": {
			"base": "1f6ae",
			"non_fully_qualified": "1f6ae",
			"decimal": "&#128686;"
		},
		"name": "put litter in its place symbol",
		"shortname": ":put_litter_in_its_place:",
		"category": "symbols",
		"emoji_order": "1977",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6b0": {
		"code_points": {
			"base": "1f6b0",
			"non_fully_qualified": "1f6b0",
			"decimal": "&#128688;"
		},
		"name": "potable water symbol",
		"shortname": ":potable_water:",
		"category": "symbols",
		"emoji_order": "1978",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"267f": {
		"code_points": {
			"base": "267f",
			"non_fully_qualified": "267f",
			"fully_qualified": "267f-fe0f",
			"decimal": "&#9855;"
		},
		"name": "wheelchair symbol",
		"shortname": ":wheelchair:",
		"category": "symbols",
		"emoji_order": "1979",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6b9": {
		"code_points": {
			"base": "1f6b9",
			"non_fully_qualified": "1f6b9",
			"decimal": "&#128697;"
		},
		"name": "mens symbol",
		"shortname": ":mens:",
		"category": "symbols",
		"emoji_order": "1980",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6ba": {
		"code_points": {
			"base": "1f6ba",
			"non_fully_qualified": "1f6ba",
			"decimal": "&#128698;"
		},
		"name": "womens symbol",
		"shortname": ":womens:",
		"category": "symbols",
		"emoji_order": "1981",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6bb": {
		"code_points": {
			"base": "1f6bb",
			"non_fully_qualified": "1f6bb",
			"decimal": "&#128699;"
		},
		"name": "restroom",
		"shortname": ":restroom:",
		"category": "symbols",
		"emoji_order": "1982",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6bc": {
		"code_points": {
			"base": "1f6bc",
			"non_fully_qualified": "1f6bc",
			"decimal": "&#128700;"
		},
		"name": "baby symbol",
		"shortname": ":baby_symbol:",
		"category": "symbols",
		"emoji_order": "1983",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6be": {
		"code_points": {
			"base": "1f6be",
			"non_fully_qualified": "1f6be",
			"decimal": "&#128702;"
		},
		"name": "water closet",
		"shortname": ":wc:",
		"category": "symbols",
		"emoji_order": "1984",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6c2": {
		"code_points": {
			"base": "1f6c2",
			"non_fully_qualified": "1f6c2",
			"decimal": "&#128706;"
		},
		"name": "passport control",
		"shortname": ":passport_control:",
		"category": "symbols",
		"emoji_order": "1985",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6c3": {
		"code_points": {
			"base": "1f6c3",
			"non_fully_qualified": "1f6c3",
			"decimal": "&#128707;"
		},
		"name": "customs",
		"shortname": ":customs:",
		"category": "symbols",
		"emoji_order": "1986",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6c4": {
		"code_points": {
			"base": "1f6c4",
			"non_fully_qualified": "1f6c4",
			"decimal": "&#128708;"
		},
		"name": "baggage claim",
		"shortname": ":baggage_claim:",
		"category": "symbols",
		"emoji_order": "1987",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6c5": {
		"code_points": {
			"base": "1f6c5",
			"non_fully_qualified": "1f6c5",
			"decimal": "&#128709;"
		},
		"name": "left luggage",
		"shortname": ":left_luggage:",
		"category": "symbols",
		"emoji_order": "1988",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"26a0": {
		"code_points": {
			"base": "26a0",
			"non_fully_qualified": "26a0",
			"fully_qualified": "26a0-fe0f",
			"decimal": "&#9888;"
		},
		"name": "warning sign",
		"shortname": ":warning:",
		"category": "symbols",
		"emoji_order": "1989",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "punctuation"]
	},
	"1f6b8": {
		"code_points": {
			"base": "1f6b8",
			"non_fully_qualified": "1f6b8",
			"decimal": "&#128696;"
		},
		"name": "children crossing",
		"shortname": ":children_crossing:",
		"category": "symbols",
		"emoji_order": "1990",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"26d4": {
		"code_points": {
			"base": "26d4",
			"non_fully_qualified": "26d4",
			"fully_qualified": "26d4-fe0f",
			"decimal": "&#9940;"
		},
		"name": "no entry",
		"shortname": ":no_entry:",
		"category": "symbols",
		"emoji_order": "1991",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "circle"]
	},
	"1f6ab": {
		"code_points": {
			"base": "1f6ab",
			"non_fully_qualified": "1f6ab",
			"decimal": "&#128683;"
		},
		"name": "no entry sign",
		"shortname": ":no_entry_sign:",
		"category": "symbols",
		"emoji_order": "1992",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "circle"]
	},
	"1f6b3": {
		"code_points": {
			"base": "1f6b3",
			"non_fully_qualified": "1f6b3",
			"decimal": "&#128691;"
		},
		"name": "no bicycles",
		"shortname": ":no_bicycles:",
		"category": "symbols",
		"emoji_order": "1993",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6ad": {
		"code_points": {
			"base": "1f6ad",
			"non_fully_qualified": "1f6ad",
			"decimal": "&#128685;"
		},
		"name": "no smoking symbol",
		"shortname": ":no_smoking:",
		"category": "symbols",
		"emoji_order": "1994",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "smoking"]
	},
	"1f6af": {
		"code_points": {
			"base": "1f6af",
			"non_fully_qualified": "1f6af",
			"decimal": "&#128687;"
		},
		"name": "do not litter symbol",
		"shortname": ":do_not_litter:",
		"category": "symbols",
		"emoji_order": "1995",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6b1": {
		"code_points": {
			"base": "1f6b1",
			"non_fully_qualified": "1f6b1",
			"decimal": "&#128689;"
		},
		"name": "non-potable water symbol",
		"shortname": ":non-potable_water:",
		"category": "symbols",
		"emoji_order": "1996",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f6b7": {
		"code_points": {
			"base": "1f6b7",
			"non_fully_qualified": "1f6b7",
			"decimal": "&#128695;"
		},
		"name": "no pedestrians",
		"shortname": ":no_pedestrians:",
		"category": "symbols",
		"emoji_order": "1997",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f4f5": {
		"code_points": {
			"base": "1f4f5",
			"non_fully_qualified": "1f4f5",
			"decimal": "&#128245;"
		},
		"name": "no mobile phones",
		"shortname": ":no_mobile_phones:",
		"category": "symbols",
		"emoji_order": "1998",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "phone"]
	},
	"1f51e": {
		"code_points": {
			"base": "1f51e",
			"non_fully_qualified": "1f51e",
			"decimal": "&#128286;"
		},
		"name": "no one under eighteen symbol",
		"shortname": ":underage:",
		"category": "symbols",
		"emoji_order": "1999",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2622": {
		"code_points": {
			"base": "2622",
			"non_fully_qualified": "2622",
			"fully_qualified": "2622-fe0f",
			"decimal": "&#9762;"
		},
		"name": "radioactive sign",
		"shortname": ":radioactive:",
		"category": "symbols",
		"emoji_order": "2000",
		"shortname_alternates": [":radioactive_sign:"],
		"ascii": [],
		"keywords": ["symbol", "science"]
	},
	"2623": {
		"code_points": {
			"base": "2623",
			"non_fully_qualified": "2623",
			"fully_qualified": "2623-fe0f",
			"decimal": "&#9763;"
		},
		"name": "biohazard sign",
		"shortname": ":biohazard:",
		"category": "symbols",
		"emoji_order": "2001",
		"shortname_alternates": [":biohazard_sign:"],
		"ascii": [],
		"keywords": ["symbol", "science"]
	},
	"2b06": {
		"code_points": {
			"base": "2b06",
			"non_fully_qualified": "2b06",
			"fully_qualified": "2b06-fe0f",
			"decimal": "&#11014;"
		},
		"name": "upwards black arrow",
		"shortname": ":arrow_up:",
		"category": "symbols",
		"emoji_order": "2002",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2197": {
		"code_points": {
			"base": "2197",
			"non_fully_qualified": "2197",
			"fully_qualified": "2197-fe0f",
			"decimal": "&#8599;"
		},
		"name": "north east arrow",
		"shortname": ":arrow_upper_right:",
		"category": "symbols",
		"emoji_order": "2003",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"27a1": {
		"code_points": {
			"base": "27a1",
			"non_fully_qualified": "27a1",
			"fully_qualified": "27a1-fe0f",
			"decimal": "&#10145;"
		},
		"name": "black rightwards arrow",
		"shortname": ":arrow_right:",
		"category": "symbols",
		"emoji_order": "2004",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2198": {
		"code_points": {
			"base": "2198",
			"non_fully_qualified": "2198",
			"fully_qualified": "2198-fe0f",
			"decimal": "&#8600;"
		},
		"name": "south east arrow",
		"shortname": ":arrow_lower_right:",
		"category": "symbols",
		"emoji_order": "2005",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2b07": {
		"code_points": {
			"base": "2b07",
			"non_fully_qualified": "2b07",
			"fully_qualified": "2b07-fe0f",
			"decimal": "&#11015;"
		},
		"name": "downwards black arrow",
		"shortname": ":arrow_down:",
		"category": "symbols",
		"emoji_order": "2006",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2199": {
		"code_points": {
			"base": "2199",
			"non_fully_qualified": "2199",
			"fully_qualified": "2199-fe0f",
			"decimal": "&#8601;"
		},
		"name": "south west arrow",
		"shortname": ":arrow_lower_left:",
		"category": "symbols",
		"emoji_order": "2007",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2b05": {
		"code_points": {
			"base": "2b05",
			"non_fully_qualified": "2b05",
			"fully_qualified": "2b05-fe0f",
			"decimal": "&#11013;"
		},
		"name": "leftwards black arrow",
		"shortname": ":arrow_left:",
		"category": "symbols",
		"emoji_order": "2008",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2196": {
		"code_points": {
			"base": "2196",
			"non_fully_qualified": "2196",
			"fully_qualified": "2196-fe0f",
			"decimal": "&#8598;"
		},
		"name": "north west arrow",
		"shortname": ":arrow_upper_left:",
		"category": "symbols",
		"emoji_order": "2009",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2195": {
		"code_points": {
			"base": "2195",
			"non_fully_qualified": "2195",
			"fully_qualified": "2195-fe0f",
			"decimal": "&#8597;"
		},
		"name": "up down arrow",
		"shortname": ":arrow_up_down:",
		"category": "symbols",
		"emoji_order": "2010",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2194": {
		"code_points": {
			"base": "2194",
			"non_fully_qualified": "2194",
			"fully_qualified": "2194-fe0f",
			"decimal": "&harr;"
		},
		"name": "left right arrow",
		"shortname": ":left_right_arrow:",
		"category": "symbols",
		"emoji_order": "2011",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"21a9": {
		"code_points": {
			"base": "21a9",
			"non_fully_qualified": "21a9",
			"fully_qualified": "21a9-fe0f",
			"decimal": "&#8617;"
		},
		"name": "leftwards arrow with hook",
		"shortname": ":leftwards_arrow_with_hook:",
		"category": "symbols",
		"emoji_order": "2012",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"21aa": {
		"code_points": {
			"base": "21aa",
			"non_fully_qualified": "21aa",
			"fully_qualified": "21aa-fe0f",
			"decimal": "&#8618;"
		},
		"name": "rightwards arrow with hook",
		"shortname": ":arrow_right_hook:",
		"category": "symbols",
		"emoji_order": "2013",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2934": {
		"code_points": {
			"base": "2934",
			"non_fully_qualified": "2934",
			"fully_qualified": "2934-fe0f",
			"decimal": "&#10548;"
		},
		"name": "arrow pointing rightwards then curving upwards",
		"shortname": ":arrow_heading_up:",
		"category": "symbols",
		"emoji_order": "2014",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"2935": {
		"code_points": {
			"base": "2935",
			"non_fully_qualified": "2935",
			"fully_qualified": "2935-fe0f",
			"decimal": "&#10549;"
		},
		"name": "arrow pointing rightwards then curving downwards",
		"shortname": ":arrow_heading_down:",
		"category": "symbols",
		"emoji_order": "2015",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f503": {
		"code_points": {
			"base": "1f503",
			"non_fully_qualified": "1f503",
			"decimal": "&#128259;"
		},
		"name": "clockwise downwards and upwards open circle arrows",
		"shortname": ":arrows_clockwise:",
		"category": "symbols",
		"emoji_order": "2016",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f504": {
		"code_points": {
			"base": "1f504",
			"non_fully_qualified": "1f504",
			"decimal": "&#128260;"
		},
		"name": "anticlockwise downwards and upwards open circle arrows",
		"shortname": ":arrows_counterclockwise:",
		"category": "symbols",
		"emoji_order": "2017",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f519": {
		"code_points": {
			"base": "1f519",
			"non_fully_qualified": "1f519",
			"decimal": "&#128281;"
		},
		"name": "back with leftwards arrow above",
		"shortname": ":back:",
		"category": "symbols",
		"emoji_order": "2018",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f51a": {
		"code_points": {
			"base": "1f51a",
			"non_fully_qualified": "1f51a",
			"decimal": "&#128282;"
		},
		"name": "end with leftwards arrow above",
		"shortname": ":end:",
		"category": "symbols",
		"emoji_order": "2019",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f51b": {
		"code_points": {
			"base": "1f51b",
			"non_fully_qualified": "1f51b",
			"decimal": "&#128283;"
		},
		"name": "on with exclamation mark with left right arrow abo",
		"shortname": ":on:",
		"category": "symbols",
		"emoji_order": "2020",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f51c": {
		"code_points": {
			"base": "1f51c",
			"non_fully_qualified": "1f51c",
			"decimal": "&#128284;"
		},
		"name": "soon with rightwards arrow above",
		"shortname": ":soon:",
		"category": "symbols",
		"emoji_order": "2021",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f51d": {
		"code_points": {
			"base": "1f51d",
			"non_fully_qualified": "1f51d",
			"decimal": "&#128285;"
		},
		"name": "top with upwards arrow above",
		"shortname": ":top:",
		"category": "symbols",
		"emoji_order": "2022",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f6d0": {
		"code_points": {
			"base": "1f6d0",
			"non_fully_qualified": "1f6d0",
			"decimal": "&#128720;"
		},
		"name": "place of worship",
		"shortname": ":place_of_worship:",
		"category": "symbols",
		"emoji_order": "2023",
		"shortname_alternates": [":worship_symbol:"],
		"ascii": [],
		"keywords": ["religion", "symbol", "pray"]
	},
	"269b": {
		"code_points": {
			"base": "269b",
			"non_fully_qualified": "269b",
			"fully_qualified": "269b-fe0f",
			"decimal": "&#9883;"
		},
		"name": "atom symbol",
		"shortname": ":atom:",
		"category": "symbols",
		"emoji_order": "2024",
		"shortname_alternates": [":atom_symbol:"],
		"ascii": [],
		"keywords": ["symbol", "science"]
	},
	"1f549": {
		"code_points": {
			"base": "1f549",
			"non_fully_qualified": "1f549",
			"fully_qualified": "1f549-fe0f",
			"decimal": "&#128329;"
		},
		"name": "om symbol",
		"shortname": ":om_symbol:",
		"category": "symbols",
		"emoji_order": "2025",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["religion", "symbol"]
	},
	"2721": {
		"code_points": {
			"base": "2721",
			"non_fully_qualified": "2721",
			"fully_qualified": "2721-fe0f",
			"decimal": "&#10017;"
		},
		"name": "star of david",
		"shortname": ":star_of_david:",
		"category": "symbols",
		"emoji_order": "2026",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["religion", "jew", "star", "symbol"]
	},
	"2638": {
		"code_points": {
			"base": "2638",
			"non_fully_qualified": "2638",
			"fully_qualified": "2638-fe0f",
			"decimal": "&#9784;"
		},
		"name": "wheel of dharma",
		"shortname": ":wheel_of_dharma:",
		"category": "symbols",
		"emoji_order": "2027",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["religion", "symbol"]
	},
	"262f": {
		"code_points": {
			"base": "262f",
			"non_fully_qualified": "262f",
			"fully_qualified": "262f-fe0f",
			"decimal": "&#9775;"
		},
		"name": "yin yang",
		"shortname": ":yin_yang:",
		"category": "symbols",
		"emoji_order": "2028",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"271d": {
		"code_points": {
			"base": "271d",
			"non_fully_qualified": "271d",
			"fully_qualified": "271d-fe0f",
			"decimal": "&#10013;"
		},
		"name": "latin cross",
		"shortname": ":cross:",
		"category": "symbols",
		"emoji_order": "2029",
		"shortname_alternates": [":latin_cross:"],
		"ascii": [],
		"keywords": ["religion", "symbol"]
	},
	"2626": {
		"code_points": {
			"base": "2626",
			"non_fully_qualified": "2626",
			"fully_qualified": "2626-fe0f",
			"decimal": "&#9766;"
		},
		"name": "orthodox cross",
		"shortname": ":orthodox_cross:",
		"category": "symbols",
		"emoji_order": "2030",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["religion", "symbol"]
	},
	"262a": {
		"code_points": {
			"base": "262a",
			"non_fully_qualified": "262a",
			"fully_qualified": "262a-fe0f",
			"decimal": "&#9770;"
		},
		"name": "star and crescent",
		"shortname": ":star_and_crescent:",
		"category": "symbols",
		"emoji_order": "2031",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["religion", "symbol"]
	},
	"262e": {
		"code_points": {
			"base": "262e",
			"non_fully_qualified": "262e",
			"fully_qualified": "262e-fe0f",
			"decimal": "&#9774;"
		},
		"name": "peace symbol",
		"shortname": ":peace:",
		"category": "symbols",
		"emoji_order": "2032",
		"shortname_alternates": [":peace_symbol:"],
		"ascii": [],
		"keywords": ["symbol", "peace", "drugs"]
	},
	"1f54e": {
		"code_points": {
			"base": "1f54e",
			"non_fully_qualified": "1f54e",
			"decimal": "&#128334;"
		},
		"name": "menorah with nine branches",
		"shortname": ":menorah:",
		"category": "symbols",
		"emoji_order": "2033",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["religion", "object", "jew", "symbol", "holidays"]
	},
	"1f52f": {
		"code_points": {
			"base": "1f52f",
			"non_fully_qualified": "1f52f",
			"decimal": "&#128303;"
		},
		"name": "six pointed star with middle dot",
		"shortname": ":six_pointed_star:",
		"category": "symbols",
		"emoji_order": "2034",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["religion", "jew", "star", "symbol"]
	},
	"2648": {
		"code_points": {
			"base": "2648",
			"non_fully_qualified": "2648",
			"fully_qualified": "2648-fe0f",
			"decimal": "&#9800;"
		},
		"name": "aries",
		"shortname": ":aries:",
		"category": "symbols",
		"emoji_order": "2035",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"2649": {
		"code_points": {
			"base": "2649",
			"non_fully_qualified": "2649",
			"fully_qualified": "2649-fe0f",
			"decimal": "&#9801;"
		},
		"name": "taurus",
		"shortname": ":taurus:",
		"category": "symbols",
		"emoji_order": "2036",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"264a": {
		"code_points": {
			"base": "264a",
			"non_fully_qualified": "264a",
			"fully_qualified": "264a-fe0f",
			"decimal": "&#9802;"
		},
		"name": "gemini",
		"shortname": ":gemini:",
		"category": "symbols",
		"emoji_order": "2037",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"264b": {
		"code_points": {
			"base": "264b",
			"non_fully_qualified": "264b",
			"fully_qualified": "264b-fe0f",
			"decimal": "&#9803;"
		},
		"name": "cancer",
		"shortname": ":cancer:",
		"category": "symbols",
		"emoji_order": "2038",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"264c": {
		"code_points": {
			"base": "264c",
			"non_fully_qualified": "264c",
			"fully_qualified": "264c-fe0f",
			"decimal": "&#9804;"
		},
		"name": "leo",
		"shortname": ":leo:",
		"category": "symbols",
		"emoji_order": "2039",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"264d": {
		"code_points": {
			"base": "264d",
			"non_fully_qualified": "264d",
			"fully_qualified": "264d-fe0f",
			"decimal": "&#9805;"
		},
		"name": "virgo",
		"shortname": ":virgo:",
		"category": "symbols",
		"emoji_order": "2040",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"264e": {
		"code_points": {
			"base": "264e",
			"non_fully_qualified": "264e",
			"fully_qualified": "264e-fe0f",
			"decimal": "&#9806;"
		},
		"name": "libra",
		"shortname": ":libra:",
		"category": "symbols",
		"emoji_order": "2041",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"264f": {
		"code_points": {
			"base": "264f",
			"non_fully_qualified": "264f",
			"fully_qualified": "264f-fe0f",
			"decimal": "&#9807;"
		},
		"name": "scorpius",
		"shortname": ":scorpius:",
		"category": "symbols",
		"emoji_order": "2042",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"2650": {
		"code_points": {
			"base": "2650",
			"non_fully_qualified": "2650",
			"fully_qualified": "2650-fe0f",
			"decimal": "&#9808;"
		},
		"name": "sagittarius",
		"shortname": ":sagittarius:",
		"category": "symbols",
		"emoji_order": "2043",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"2651": {
		"code_points": {
			"base": "2651",
			"non_fully_qualified": "2651",
			"fully_qualified": "2651-fe0f",
			"decimal": "&#9809;"
		},
		"name": "capricorn",
		"shortname": ":capricorn:",
		"category": "symbols",
		"emoji_order": "2044",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"2652": {
		"code_points": {
			"base": "2652",
			"non_fully_qualified": "2652",
			"fully_qualified": "2652-fe0f",
			"decimal": "&#9810;"
		},
		"name": "aquarius",
		"shortname": ":aquarius:",
		"category": "symbols",
		"emoji_order": "2045",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"2653": {
		"code_points": {
			"base": "2653",
			"non_fully_qualified": "2653",
			"fully_qualified": "2653-fe0f",
			"decimal": "&#9811;"
		},
		"name": "pisces",
		"shortname": ":pisces:",
		"category": "symbols",
		"emoji_order": "2046",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["zodiac", "symbol"]
	},
	"26ce": {
		"code_points": {
			"base": "26ce",
			"non_fully_qualified": "26ce",
			"decimal": "&#9934;"
		},
		"name": "ophiuchus",
		"shortname": ":ophiuchus:",
		"category": "symbols",
		"emoji_order": "2047",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f500": {
		"code_points": {
			"base": "1f500",
			"non_fully_qualified": "1f500",
			"decimal": "&#128256;"
		},
		"name": "twisted rightwards arrows",
		"shortname": ":twisted_rightwards_arrows:",
		"category": "symbols",
		"emoji_order": "2048",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f501": {
		"code_points": {
			"base": "1f501",
			"non_fully_qualified": "1f501",
			"decimal": "&#128257;"
		},
		"name": "clockwise rightwards and leftwards open circle arrows",
		"shortname": ":repeat:",
		"category": "symbols",
		"emoji_order": "2049",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f502": {
		"code_points": {
			"base": "1f502",
			"non_fully_qualified": "1f502",
			"decimal": "&#128258;"
		},
		"name": "clockwise rightwards and leftwards open circle arrows with circled one overlay",
		"shortname": ":repeat_one:",
		"category": "symbols",
		"emoji_order": "2050",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"25b6": {
		"code_points": {
			"base": "25b6",
			"non_fully_qualified": "25b6",
			"fully_qualified": "25b6-fe0f",
			"decimal": "&#9654;"
		},
		"name": "black right-pointing triangle",
		"shortname": ":arrow_forward:",
		"category": "symbols",
		"emoji_order": "2051",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol", "triangle"]
	},
	"23e9": {
		"code_points": {
			"base": "23e9",
			"non_fully_qualified": "23e9",
			"decimal": "&#9193;"
		},
		"name": "black right-pointing double triangle",
		"shortname": ":fast_forward:",
		"category": "symbols",
		"emoji_order": "2052",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"23ed": {
		"code_points": {
			"base": "23ed",
			"non_fully_qualified": "23ed",
			"fully_qualified": "23ed-fe0f",
			"decimal": "&#9197;"
		},
		"name": "black right-pointing double triangle with vertical bar",
		"shortname": ":track_next:",
		"category": "symbols",
		"emoji_order": "2053",
		"shortname_alternates": [":next_track:"],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"23ef": {
		"code_points": {
			"base": "23ef",
			"non_fully_qualified": "23ef",
			"fully_qualified": "23ef-fe0f",
			"decimal": "&#9199;"
		},
		"name": "black right-pointing double triangle with double vertical bar",
		"shortname": ":play_pause:",
		"category": "symbols",
		"emoji_order": "2054",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"25c0": {
		"code_points": {
			"base": "25c0",
			"non_fully_qualified": "25c0",
			"fully_qualified": "25c0-fe0f",
			"decimal": "&#9664;"
		},
		"name": "black left-pointing triangle",
		"shortname": ":arrow_backward:",
		"category": "symbols",
		"emoji_order": "2055",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol", "triangle"]
	},
	"23ea": {
		"code_points": {
			"base": "23ea",
			"non_fully_qualified": "23ea",
			"decimal": "&#9194;"
		},
		"name": "black left-pointing double triangle",
		"shortname": ":rewind:",
		"category": "symbols",
		"emoji_order": "2056",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"23ee": {
		"code_points": {
			"base": "23ee",
			"non_fully_qualified": "23ee",
			"fully_qualified": "23ee-fe0f",
			"decimal": "&#9198;"
		},
		"name": "black left-pointing double triangle with vertical bar",
		"shortname": ":track_previous:",
		"category": "symbols",
		"emoji_order": "2057",
		"shortname_alternates": [":previous_track:"],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f53c": {
		"code_points": {
			"base": "1f53c",
			"non_fully_qualified": "1f53c",
			"decimal": "&#128316;"
		},
		"name": "up-pointing small red triangle",
		"shortname": ":arrow_up_small:",
		"category": "symbols",
		"emoji_order": "2058",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol", "triangle"]
	},
	"23eb": {
		"code_points": {
			"base": "23eb",
			"non_fully_qualified": "23eb",
			"decimal": "&#9195;"
		},
		"name": "black up-pointing double triangle",
		"shortname": ":arrow_double_up:",
		"category": "symbols",
		"emoji_order": "2059",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"1f53d": {
		"code_points": {
			"base": "1f53d",
			"non_fully_qualified": "1f53d",
			"decimal": "&#128317;"
		},
		"name": "down-pointing small red triangle",
		"shortname": ":arrow_down_small:",
		"category": "symbols",
		"emoji_order": "2060",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol", "triangle"]
	},
	"23ec": {
		"code_points": {
			"base": "23ec",
			"non_fully_qualified": "23ec",
			"decimal": "&#9196;"
		},
		"name": "black down-pointing double triangle",
		"shortname": ":arrow_double_down:",
		"category": "symbols",
		"emoji_order": "2061",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["arrow", "symbol"]
	},
	"23f8": {
		"code_points": {
			"base": "23f8",
			"non_fully_qualified": "23f8",
			"fully_qualified": "23f8-fe0f",
			"decimal": "&#9208;"
		},
		"name": "double vertical bar",
		"shortname": ":pause_button:",
		"category": "symbols",
		"emoji_order": "2062",
		"shortname_alternates": [":double_vertical_bar:"],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"23f9": {
		"code_points": {
			"base": "23f9",
			"non_fully_qualified": "23f9",
			"fully_qualified": "23f9-fe0f",
			"decimal": "&#9209;"
		},
		"name": "black square for stop",
		"shortname": ":stop_button:",
		"category": "symbols",
		"emoji_order": "2063",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "square"]
	},
	"23fa": {
		"code_points": {
			"base": "23fa",
			"non_fully_qualified": "23fa",
			"fully_qualified": "23fa-fe0f",
			"decimal": "&#9210;"
		},
		"name": "black circle for record",
		"shortname": ":record_button:",
		"category": "symbols",
		"emoji_order": "2064",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "circle"]
	},
	"23cf": {
		"code_points": {
			"base": "23cf",
			"non_fully_qualified": "23cf",
			"fully_qualified": "23cf-fe0f",
			"decimal": "&#9167;"
		},
		"name": "eject symbol",
		"shortname": ":eject:",
		"category": "symbols",
		"emoji_order": "2065",
		"shortname_alternates": [":eject_symbol:"],
		"ascii": [],
		"keywords": []
	},
	"1f3a6": {
		"code_points": {
			"base": "1f3a6",
			"non_fully_qualified": "1f3a6",
			"decimal": "&#127910;"
		},
		"name": "cinema",
		"shortname": ":cinema:",
		"category": "symbols",
		"emoji_order": "2066",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "camera", "movie"]
	},
	"1f505": {
		"code_points": {
			"base": "1f505",
			"non_fully_qualified": "1f505",
			"decimal": "&#128261;"
		},
		"name": "low brightness symbol",
		"shortname": ":low_brightness:",
		"category": "symbols",
		"emoji_order": "2067",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "sun"]
	},
	"1f506": {
		"code_points": {
			"base": "1f506",
			"non_fully_qualified": "1f506",
			"decimal": "&#128262;"
		},
		"name": "high brightness symbol",
		"shortname": ":high_brightness:",
		"category": "symbols",
		"emoji_order": "2068",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "sun"]
	},
	"1f4f6": {
		"code_points": {
			"base": "1f4f6",
			"non_fully_qualified": "1f4f6",
			"decimal": "&#128246;"
		},
		"name": "antenna with bars",
		"shortname": ":signal_strength:",
		"category": "symbols",
		"emoji_order": "2069",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f4f3": {
		"code_points": {
			"base": "1f4f3",
			"non_fully_qualified": "1f4f3",
			"decimal": "&#128243;"
		},
		"name": "vibration mode",
		"shortname": ":vibration_mode:",
		"category": "symbols",
		"emoji_order": "2070",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f4f4": {
		"code_points": {
			"base": "1f4f4",
			"non_fully_qualified": "1f4f4",
			"decimal": "&#128244;"
		},
		"name": "mobile phone off",
		"shortname": ":mobile_phone_off:",
		"category": "symbols",
		"emoji_order": "2071",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"267b": {
		"code_points": {
			"base": "267b",
			"non_fully_qualified": "267b",
			"fully_qualified": "267b-fe0f",
			"decimal": "&#9851;"
		},
		"name": "black universal recycling symbol",
		"shortname": ":recycle:",
		"category": "symbols",
		"emoji_order": "2072",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f4db": {
		"code_points": {
			"base": "1f4db",
			"non_fully_qualified": "1f4db",
			"decimal": "&#128219;"
		},
		"name": "name badge",
		"shortname": ":name_badge:",
		"category": "symbols",
		"emoji_order": "2073",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["work"]
	},
	"269c": {
		"code_points": {
			"base": "269c",
			"non_fully_qualified": "269c",
			"fully_qualified": "269c-fe0f",
			"decimal": "&#9884;"
		},
		"name": "fleur-de-lis",
		"shortname": ":fleur-de-lis:",
		"category": "symbols",
		"emoji_order": "2074",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "symbol"]
	},
	"1f530": {
		"code_points": {
			"base": "1f530",
			"non_fully_qualified": "1f530",
			"decimal": "&#128304;"
		},
		"name": "japanese symbol for beginner",
		"shortname": ":beginner:",
		"category": "symbols",
		"emoji_order": "2075",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f531": {
		"code_points": {
			"base": "1f531",
			"non_fully_qualified": "1f531",
			"decimal": "&#128305;"
		},
		"name": "trident emblem",
		"shortname": ":trident:",
		"category": "symbols",
		"emoji_order": "2076",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "symbol"]
	},
	"2b55": {
		"code_points": {
			"base": "2b55",
			"non_fully_qualified": "2b55",
			"fully_qualified": "2b55-fe0f",
			"decimal": "&#11093;"
		},
		"name": "heavy large circle",
		"shortname": ":o:",
		"category": "symbols",
		"emoji_order": "2077",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "circle"]
	},
	"2705": {
		"code_points": {
			"base": "2705",
			"non_fully_qualified": "2705",
			"decimal": "&#9989;"
		},
		"name": "white heavy check mark",
		"shortname": ":white_check_mark:",
		"category": "symbols",
		"emoji_order": "2078",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2611": {
		"code_points": {
			"base": "2611",
			"non_fully_qualified": "2611",
			"fully_qualified": "2611-fe0f",
			"decimal": "&#9745;"
		},
		"name": "ballot box with check",
		"shortname": ":ballot_box_with_check:",
		"category": "symbols",
		"emoji_order": "2079",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2714": {
		"code_points": {
			"base": "2714",
			"non_fully_qualified": "2714",
			"fully_qualified": "2714-fe0f",
			"decimal": "&#10004;"
		},
		"name": "heavy check mark",
		"shortname": ":heavy_check_mark:",
		"category": "symbols",
		"emoji_order": "2080",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2716": {
		"code_points": {
			"base": "2716",
			"non_fully_qualified": "2716",
			"fully_qualified": "2716-fe0f",
			"decimal": "&#10006;"
		},
		"name": "heavy multiplication x",
		"shortname": ":heavy_multiplication_x:",
		"category": "symbols",
		"emoji_order": "2081",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["math", "symbol"]
	},
	"274c": {
		"code_points": {
			"base": "274c",
			"non_fully_qualified": "274c",
			"decimal": "&#10060;"
		},
		"name": "cross mark",
		"shortname": ":x:",
		"category": "symbols",
		"emoji_order": "2082",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "sol"]
	},
	"274e": {
		"code_points": {
			"base": "274e",
			"non_fully_qualified": "274e",
			"decimal": "&#10062;"
		},
		"name": "negative squared cross mark",
		"shortname": ":negative_squared_cross_mark:",
		"category": "symbols",
		"emoji_order": "2083",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2795": {
		"code_points": {
			"base": "2795",
			"non_fully_qualified": "2795",
			"decimal": "&#10133;"
		},
		"name": "heavy plus sign",
		"shortname": ":heavy_plus_sign:",
		"category": "symbols",
		"emoji_order": "2084",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["math", "symbol"]
	},
	"2796": {
		"code_points": {
			"base": "2796",
			"non_fully_qualified": "2796",
			"decimal": "&#10134;"
		},
		"name": "heavy minus sign",
		"shortname": ":heavy_minus_sign:",
		"category": "symbols",
		"emoji_order": "2088",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["math", "symbol"]
	},
	"2797": {
		"code_points": {
			"base": "2797",
			"non_fully_qualified": "2797",
			"decimal": "&#10135;"
		},
		"name": "heavy division sign",
		"shortname": ":heavy_division_sign:",
		"category": "symbols",
		"emoji_order": "2089",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["math", "symbol"]
	},
	"27b0": {
		"code_points": {
			"base": "27b0",
			"non_fully_qualified": "27b0",
			"decimal": "&#10160;"
		},
		"name": "curly loop",
		"shortname": ":curly_loop:",
		"category": "symbols",
		"emoji_order": "2090",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"27bf": {
		"code_points": {
			"base": "27bf",
			"non_fully_qualified": "27bf",
			"decimal": "&#10175;"
		},
		"name": "double curly loop",
		"shortname": ":loop:",
		"category": "symbols",
		"emoji_order": "2091",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"303d": {
		"code_points": {
			"base": "303d",
			"non_fully_qualified": "303d",
			"fully_qualified": "303d-fe0f",
			"decimal": "&#12349;"
		},
		"name": "part alternation mark",
		"shortname": ":part_alternation_mark:",
		"category": "symbols",
		"emoji_order": "2092",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2733": {
		"code_points": {
			"base": "2733",
			"non_fully_qualified": "2733",
			"fully_qualified": "2733-fe0f",
			"decimal": "&#10035;"
		},
		"name": "eight spoked asterisk",
		"shortname": ":eight_spoked_asterisk:",
		"category": "symbols",
		"emoji_order": "2093",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2734": {
		"code_points": {
			"base": "2734",
			"non_fully_qualified": "2734",
			"fully_qualified": "2734-fe0f",
			"decimal": "&#10036;"
		},
		"name": "eight pointed black star",
		"shortname": ":eight_pointed_black_star:",
		"category": "symbols",
		"emoji_order": "2094",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2747": {
		"code_points": {
			"base": "2747",
			"non_fully_qualified": "2747",
			"fully_qualified": "2747-fe0f",
			"decimal": "&#10055;"
		},
		"name": "sparkle",
		"shortname": ":sparkle:",
		"category": "symbols",
		"emoji_order": "2095",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"203c": {
		"code_points": {
			"base": "203c",
			"non_fully_qualified": "203c",
			"fully_qualified": "203c-fe0f",
			"decimal": "&#8252;"
		},
		"name": "double exclamation mark",
		"shortname": ":bangbang:",
		"category": "symbols",
		"emoji_order": "2096",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "punctuation"]
	},
	"2049": {
		"code_points": {
			"base": "2049",
			"non_fully_qualified": "2049",
			"fully_qualified": "2049-fe0f",
			"decimal": "&#8265;"
		},
		"name": "exclamation question mark",
		"shortname": ":interrobang:",
		"category": "symbols",
		"emoji_order": "2097",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "punctuation"]
	},
	"2753": {
		"code_points": {
			"base": "2753",
			"non_fully_qualified": "2753",
			"decimal": "&#10067;"
		},
		"name": "black question mark ornament",
		"shortname": ":question:",
		"category": "symbols",
		"emoji_order": "2098",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "punctuation", "wth"]
	},
	"2754": {
		"code_points": {
			"base": "2754",
			"non_fully_qualified": "2754",
			"decimal": "&#10068;"
		},
		"name": "white question mark ornament",
		"shortname": ":grey_question:",
		"category": "symbols",
		"emoji_order": "2099",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "punctuation"]
	},
	"2755": {
		"code_points": {
			"base": "2755",
			"non_fully_qualified": "2755",
			"decimal": "&#10069;"
		},
		"name": "white exclamation mark ornament",
		"shortname": ":grey_exclamation:",
		"category": "symbols",
		"emoji_order": "2100",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "punctuation"]
	},
	"2757": {
		"code_points": {
			"base": "2757",
			"non_fully_qualified": "2757",
			"fully_qualified": "2757-fe0f",
			"decimal": "&#10071;"
		},
		"name": "heavy exclamation mark symbol",
		"shortname": ":exclamation:",
		"category": "symbols",
		"emoji_order": "2101",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "punctuation"]
	},
	"3030": {
		"code_points": {
			"base": "3030",
			"non_fully_qualified": "3030",
			"fully_qualified": "3030-fe0f",
			"decimal": "&#12336;"
		},
		"name": "wavy dash",
		"shortname": ":wavy_dash:",
		"category": "symbols",
		"emoji_order": "2102",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"00a9": {
		"code_points": {
			"base": "00a9",
			"non_fully_qualified": "00a9",
			"fully_qualified": "00a9-fe0f",
			"decimal": "&copy;"
		},
		"name": "copyright sign",
		"shortname": ":copyright:",
		"category": "symbols",
		"emoji_order": "2103",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"00ae": {
		"code_points": {
			"base": "00ae",
			"non_fully_qualified": "00ae",
			"fully_qualified": "00ae-fe0f",
			"decimal": "&reg;"
		},
		"name": "registered sign",
		"shortname": ":registered:",
		"category": "symbols",
		"emoji_order": "2104",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2122": {
		"code_points": {
			"base": "2122",
			"non_fully_qualified": "2122",
			"fully_qualified": "2122-fe0f",
			"decimal": "&trade;"
		},
		"name": "trade mark sign",
		"shortname": ":tm:",
		"category": "symbols",
		"emoji_order": "2105",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"0023-20e3": {
		"code_points": {
			"base": "0023-20e3",
			"non_fully_qualified": "0023-20e3",
			"fully_qualified": "0023-fe0f-20e3",
			"decimal": "#&#8419;"
		},
		"name": "keycap number sign",
		"shortname": ":hash:",
		"category": "symbols",
		"emoji_order": "2106",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "symbol"]
	},
	"002a-20e3": {
		"code_points": {
			"base": "002a-20e3",
			"non_fully_qualified": "002a-20e3",
			"fully_qualified": "002a-fe0f-20e3",
			"decimal": "*&#8419;"
		},
		"name": "keycap asterisk",
		"shortname": ":asterisk:",
		"category": "symbols",
		"emoji_order": "2107",
		"shortname_alternates": [":keycap_asterisk:"],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"0030-20e3": {
		"code_points": {
			"base": "0030-20e3",
			"non_fully_qualified": "0030-20e3",
			"fully_qualified": "0030-fe0f-20e3",
			"decimal": "0&#8419;"
		},
		"name": "keycap digit zero",
		"shortname": ":zero:",
		"category": "symbols",
		"emoji_order": "2108",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0031-20e3": {
		"code_points": {
			"base": "0031-20e3",
			"non_fully_qualified": "0031-20e3",
			"fully_qualified": "0031-fe0f-20e3",
			"decimal": "1&#8419;"
		},
		"name": "keycap digit one",
		"shortname": ":one:",
		"category": "symbols",
		"emoji_order": "2109",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0032-20e3": {
		"code_points": {
			"base": "0032-20e3",
			"non_fully_qualified": "0032-20e3",
			"fully_qualified": "0032-fe0f-20e3",
			"decimal": "2&#8419;"
		},
		"name": "keycap digit two",
		"shortname": ":two:",
		"category": "symbols",
		"emoji_order": "2110",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0033-20e3": {
		"code_points": {
			"base": "0033-20e3",
			"non_fully_qualified": "0033-20e3",
			"fully_qualified": "0033-fe0f-20e3",
			"decimal": "3&#8419;"
		},
		"name": "keycap digit three",
		"shortname": ":three:",
		"category": "symbols",
		"emoji_order": "2111",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0034-20e3": {
		"code_points": {
			"base": "0034-20e3",
			"non_fully_qualified": "0034-20e3",
			"fully_qualified": "0034-fe0f-20e3",
			"decimal": "4&#8419;"
		},
		"name": "keycap digit four",
		"shortname": ":four:",
		"category": "symbols",
		"emoji_order": "2112",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0035-20e3": {
		"code_points": {
			"base": "0035-20e3",
			"non_fully_qualified": "0035-20e3",
			"fully_qualified": "0035-fe0f-20e3",
			"decimal": "5&#8419;"
		},
		"name": "keycap digit five",
		"shortname": ":five:",
		"category": "symbols",
		"emoji_order": "2113",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0036-20e3": {
		"code_points": {
			"base": "0036-20e3",
			"non_fully_qualified": "0036-20e3",
			"fully_qualified": "0036-fe0f-20e3",
			"decimal": "6&#8419;"
		},
		"name": "keycap digit six",
		"shortname": ":six:",
		"category": "symbols",
		"emoji_order": "2114",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0037-20e3": {
		"code_points": {
			"base": "0037-20e3",
			"non_fully_qualified": "0037-20e3",
			"fully_qualified": "0037-fe0f-20e3",
			"decimal": "7&#8419;"
		},
		"name": "keycap digit seven",
		"shortname": ":seven:",
		"category": "symbols",
		"emoji_order": "2115",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0038-20e3": {
		"code_points": {
			"base": "0038-20e3",
			"non_fully_qualified": "0038-20e3",
			"fully_qualified": "0038-fe0f-20e3",
			"decimal": "8&#8419;"
		},
		"name": "keycap digit eight",
		"shortname": ":eight:",
		"category": "symbols",
		"emoji_order": "2116",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0039-20e3": {
		"code_points": {
			"base": "0039-20e3",
			"non_fully_qualified": "0039-20e3",
			"fully_qualified": "0039-fe0f-20e3",
			"decimal": "9&#8419;"
		},
		"name": "keycap digit nine",
		"shortname": ":nine:",
		"category": "symbols",
		"emoji_order": "2117",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"1f51f": {
		"code_points": {
			"base": "1f51f",
			"non_fully_qualified": "1f51f",
			"decimal": "&#128287;"
		},
		"name": "keycap ten",
		"shortname": ":keycap_ten:",
		"category": "symbols",
		"emoji_order": "2118",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"1f4af": {
		"code_points": {
			"base": "1f4af",
			"non_fully_qualified": "1f4af",
			"decimal": "&#128175;"
		},
		"name": "hundred points symbol",
		"shortname": ":100:",
		"category": "symbols",
		"emoji_order": "2119",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "wow", "win", "perfect", "parties"]
	},
	"1f520": {
		"code_points": {
			"base": "1f520",
			"non_fully_qualified": "1f520",
			"decimal": "&#128288;"
		},
		"name": "input symbol for latin capital letters",
		"shortname": ":capital_abcd:",
		"category": "symbols",
		"emoji_order": "2120",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f521": {
		"code_points": {
			"base": "1f521",
			"non_fully_qualified": "1f521",
			"decimal": "&#128289;"
		},
		"name": "input symbol for latin small letters",
		"shortname": ":abcd:",
		"category": "symbols",
		"emoji_order": "2121",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f522": {
		"code_points": {
			"base": "1f522",
			"non_fully_qualified": "1f522",
			"decimal": "&#128290;"
		},
		"name": "input symbol for numbers",
		"shortname": ":1234:",
		"category": "symbols",
		"emoji_order": "2122",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f523": {
		"code_points": {
			"base": "1f523",
			"non_fully_qualified": "1f523",
			"decimal": "&#128291;"
		},
		"name": "input symbol for symbols",
		"shortname": ":symbols:",
		"category": "symbols",
		"emoji_order": "2123",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f524": {
		"code_points": {
			"base": "1f524",
			"non_fully_qualified": "1f524",
			"decimal": "&#128292;"
		},
		"name": "input symbol for latin letters",
		"shortname": ":abc:",
		"category": "symbols",
		"emoji_order": "2124",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f170": {
		"code_points": {
			"base": "1f170",
			"non_fully_qualified": "1f170",
			"decimal": "&#127344;"
		},
		"name": "negative squared latin capital letter a",
		"shortname": ":a:",
		"category": "symbols",
		"emoji_order": "2125",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f18e": {
		"code_points": {
			"base": "1f18e",
			"non_fully_qualified": "1f18e",
			"decimal": "&#127374;"
		},
		"name": "negative squared ab",
		"shortname": ":ab:",
		"category": "symbols",
		"emoji_order": "2126",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f171": {
		"code_points": {
			"base": "1f171",
			"non_fully_qualified": "1f171",
			"decimal": "&#127345;"
		},
		"name": "negative squared latin capital letter b",
		"shortname": ":b:",
		"category": "symbols",
		"emoji_order": "2127",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f191": {
		"code_points": {
			"base": "1f191",
			"non_fully_qualified": "1f191",
			"decimal": "&#127377;"
		},
		"name": "squared cl",
		"shortname": ":cl:",
		"category": "symbols",
		"emoji_order": "2128",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f192": {
		"code_points": {
			"base": "1f192",
			"non_fully_qualified": "1f192",
			"decimal": "&#127378;"
		},
		"name": "squared cool",
		"shortname": ":cool:",
		"category": "symbols",
		"emoji_order": "2129",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f193": {
		"code_points": {
			"base": "1f193",
			"non_fully_qualified": "1f193",
			"decimal": "&#127379;"
		},
		"name": "squared free",
		"shortname": ":free:",
		"category": "symbols",
		"emoji_order": "2130",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"2139": {
		"code_points": {
			"base": "2139",
			"non_fully_qualified": "2139",
			"fully_qualified": "2139-fe0f",
			"decimal": "&#8505;"
		},
		"name": "information source",
		"shortname": ":information_source:",
		"category": "symbols",
		"emoji_order": "2131",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f194": {
		"code_points": {
			"base": "1f194",
			"non_fully_qualified": "1f194",
			"decimal": "&#127380;"
		},
		"name": "squared id",
		"shortname": ":id:",
		"category": "symbols",
		"emoji_order": "2132",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"24c2": {
		"code_points": {
			"base": "24c2",
			"non_fully_qualified": "24c2",
			"fully_qualified": "24c2-fe0f",
			"decimal": "&#9410;"
		},
		"name": "circled latin capital letter m",
		"shortname": ":m:",
		"category": "symbols",
		"emoji_order": "2133",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f195": {
		"code_points": {
			"base": "1f195",
			"non_fully_qualified": "1f195",
			"decimal": "&#127381;"
		},
		"name": "squared new",
		"shortname": ":new:",
		"category": "symbols",
		"emoji_order": "2134",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f196": {
		"code_points": {
			"base": "1f196",
			"non_fully_qualified": "1f196",
			"decimal": "&#127382;"
		},
		"name": "squared ng",
		"shortname": ":ng:",
		"category": "symbols",
		"emoji_order": "2135",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f17e": {
		"code_points": {
			"base": "1f17e",
			"non_fully_qualified": "1f17e",
			"decimal": "&#127358;"
		},
		"name": "negative squared latin capital letter o",
		"shortname": ":o2:",
		"category": "symbols",
		"emoji_order": "2136",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f197": {
		"code_points": {
			"base": "1f197",
			"non_fully_qualified": "1f197",
			"decimal": "&#127383;"
		},
		"name": "squared ok",
		"shortname": ":ok:",
		"category": "symbols",
		"emoji_order": "2137",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f17f": {
		"code_points": {
			"base": "1f17f",
			"non_fully_qualified": "1f17f",
			"fully_qualified": "1f17f-fe0f",
			"decimal": "&#127359;"
		},
		"name": "negative squared latin capital letter p",
		"shortname": ":parking:",
		"category": "symbols",
		"emoji_order": "2138",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f198": {
		"code_points": {
			"base": "1f198",
			"non_fully_qualified": "1f198",
			"decimal": "&#127384;"
		},
		"name": "squared sos",
		"shortname": ":sos:",
		"category": "symbols",
		"emoji_order": "2139",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f199": {
		"code_points": {
			"base": "1f199",
			"non_fully_qualified": "1f199",
			"decimal": "&#127385;"
		},
		"name": "squared up with exclamation mark",
		"shortname": ":up:",
		"category": "symbols",
		"emoji_order": "2140",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f19a": {
		"code_points": {
			"base": "1f19a",
			"non_fully_qualified": "1f19a",
			"decimal": "&#127386;"
		},
		"name": "squared vs",
		"shortname": ":vs:",
		"category": "symbols",
		"emoji_order": "2141",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f201": {
		"code_points": {
			"base": "1f201",
			"non_fully_qualified": "1f201",
			"decimal": "&#127489;"
		},
		"name": "squared katakana koko",
		"shortname": ":koko:",
		"category": "symbols",
		"emoji_order": "2142",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f202": {
		"code_points": {
			"base": "1f202",
			"non_fully_qualified": "1f202",
			"fully_qualified": "1f202-fe0f",
			"decimal": "&#127490;"
		},
		"name": "squared katakana sa",
		"shortname": ":sa:",
		"category": "symbols",
		"emoji_order": "2143",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f237": {
		"code_points": {
			"base": "1f237",
			"non_fully_qualified": "1f237",
			"fully_qualified": "1f237-fe0f",
			"decimal": "&#127543;"
		},
		"name": "squared cjk unified ideograph-6708",
		"shortname": ":u6708:",
		"category": "symbols",
		"emoji_order": "2144",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f236": {
		"code_points": {
			"base": "1f236",
			"non_fully_qualified": "1f236",
			"decimal": "&#127542;"
		},
		"name": "squared cjk unified ideograph-6709",
		"shortname": ":u6709:",
		"category": "symbols",
		"emoji_order": "2145",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f22f": {
		"code_points": {
			"base": "1f22f",
			"non_fully_qualified": "1f22f",
			"fully_qualified": "1f22f-fe0f",
			"decimal": "&#127535;"
		},
		"name": "squared cjk unified ideograph-6307",
		"shortname": ":u6307:",
		"category": "symbols",
		"emoji_order": "2146",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f250": {
		"code_points": {
			"base": "1f250",
			"non_fully_qualified": "1f250",
			"decimal": "&#127568;"
		},
		"name": "circled ideograph advantage",
		"shortname": ":ideograph_advantage:",
		"category": "symbols",
		"emoji_order": "2147",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["japan", "symbol"]
	},
	"1f239": {
		"code_points": {
			"base": "1f239",
			"non_fully_qualified": "1f239",
			"decimal": "&#127545;"
		},
		"name": "squared cjk unified ideograph-5272",
		"shortname": ":u5272:",
		"category": "symbols",
		"emoji_order": "2148",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f21a": {
		"code_points": {
			"base": "1f21a",
			"non_fully_qualified": "1f21a",
			"fully_qualified": "1f21a-fe0f",
			"decimal": "&#127514;"
		},
		"name": "squared cjk unified ideograph-7121",
		"shortname": ":u7121:",
		"category": "symbols",
		"emoji_order": "2149",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f232": {
		"code_points": {
			"base": "1f232",
			"non_fully_qualified": "1f232",
			"decimal": "&#127538;"
		},
		"name": "squared cjk unified ideograph-7981",
		"shortname": ":u7981:",
		"category": "symbols",
		"emoji_order": "2150",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["japan", "symbol"]
	},
	"1f251": {
		"code_points": {
			"base": "1f251",
			"non_fully_qualified": "1f251",
			"decimal": "&#127569;"
		},
		"name": "circled ideograph accept",
		"shortname": ":accept:",
		"category": "symbols",
		"emoji_order": "2151",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f238": {
		"code_points": {
			"base": "1f238",
			"non_fully_qualified": "1f238",
			"decimal": "&#127544;"
		},
		"name": "squared cjk unified ideograph-7533",
		"shortname": ":u7533:",
		"category": "symbols",
		"emoji_order": "2152",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f234": {
		"code_points": {
			"base": "1f234",
			"non_fully_qualified": "1f234",
			"decimal": "&#127540;"
		},
		"name": "squared cjk unified ideograph-5408",
		"shortname": ":u5408:",
		"category": "symbols",
		"emoji_order": "2153",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["japan", "symbol"]
	},
	"1f233": {
		"code_points": {
			"base": "1f233",
			"non_fully_qualified": "1f233",
			"decimal": "&#127539;"
		},
		"name": "squared cjk unified ideograph-7a7a",
		"shortname": ":u7a7a:",
		"category": "symbols",
		"emoji_order": "2154",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"3297": {
		"code_points": {
			"base": "3297",
			"non_fully_qualified": "3297",
			"fully_qualified": "3297-fe0f",
			"decimal": "&#12951;"
		},
		"name": "circled ideograph congratulation",
		"shortname": ":congratulations:",
		"category": "symbols",
		"emoji_order": "2155",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["japan", "symbol"]
	},
	"3299": {
		"code_points": {
			"base": "3299",
			"non_fully_qualified": "3299",
			"fully_qualified": "3299-fe0f",
			"decimal": "&#12953;"
		},
		"name": "circled ideograph secret",
		"shortname": ":secret:",
		"category": "symbols",
		"emoji_order": "2156",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["japan", "symbol"]
	},
	"1f23a": {
		"code_points": {
			"base": "1f23a",
			"non_fully_qualified": "1f23a",
			"decimal": "&#127546;"
		},
		"name": "squared cjk unified ideograph-55b6",
		"shortname": ":u55b6:",
		"category": "symbols",
		"emoji_order": "2157",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f235": {
		"code_points": {
			"base": "1f235",
			"non_fully_qualified": "1f235",
			"decimal": "&#127541;"
		},
		"name": "squared cjk unified ideograph-6e80",
		"shortname": ":u6e80:",
		"category": "symbols",
		"emoji_order": "2158",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["japan", "symbol"]
	},
	"25aa": {
		"code_points": {
			"base": "25aa",
			"non_fully_qualified": "25aa",
			"fully_qualified": "25aa-fe0f",
			"decimal": "&#9642;"
		},
		"name": "black small square",
		"shortname": ":black_small_square:",
		"category": "symbols",
		"emoji_order": "2159",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"25ab": {
		"code_points": {
			"base": "25ab",
			"non_fully_qualified": "25ab",
			"fully_qualified": "25ab-fe0f",
			"decimal": "&#9643;"
		},
		"name": "white small square",
		"shortname": ":white_small_square:",
		"category": "symbols",
		"emoji_order": "2160",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"25fb": {
		"code_points": {
			"base": "25fb",
			"non_fully_qualified": "25fb",
			"fully_qualified": "25fb-fe0f",
			"decimal": "&#9723;"
		},
		"name": "white medium square",
		"shortname": ":white_medium_square:",
		"category": "symbols",
		"emoji_order": "2161",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"25fc": {
		"code_points": {
			"base": "25fc",
			"non_fully_qualified": "25fc",
			"fully_qualified": "25fc-fe0f",
			"decimal": "&#9724;"
		},
		"name": "black medium square",
		"shortname": ":black_medium_square:",
		"category": "symbols",
		"emoji_order": "2162",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"25fd": {
		"code_points": {
			"base": "25fd",
			"non_fully_qualified": "25fd",
			"fully_qualified": "25fd-fe0f",
			"decimal": "&#9725;"
		},
		"name": "white medium small square",
		"shortname": ":white_medium_small_square:",
		"category": "symbols",
		"emoji_order": "2163",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"25fe": {
		"code_points": {
			"base": "25fe",
			"non_fully_qualified": "25fe",
			"fully_qualified": "25fe-fe0f",
			"decimal": "&#9726;"
		},
		"name": "black medium small square",
		"shortname": ":black_medium_small_square:",
		"category": "symbols",
		"emoji_order": "2164",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"2b1b": {
		"code_points": {
			"base": "2b1b",
			"non_fully_qualified": "2b1b",
			"fully_qualified": "2b1b-fe0f",
			"decimal": "&#11035;"
		},
		"name": "black large square",
		"shortname": ":black_large_square:",
		"category": "symbols",
		"emoji_order": "2165",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"2b1c": {
		"code_points": {
			"base": "2b1c",
			"non_fully_qualified": "2b1c",
			"fully_qualified": "2b1c-fe0f",
			"decimal": "&#11036;"
		},
		"name": "white large square",
		"shortname": ":white_large_square:",
		"category": "symbols",
		"emoji_order": "2166",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"1f536": {
		"code_points": {
			"base": "1f536",
			"non_fully_qualified": "1f536",
			"decimal": "&#128310;"
		},
		"name": "large orange diamond",
		"shortname": ":large_orange_diamond:",
		"category": "symbols",
		"emoji_order": "2167",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol"]
	},
	"1f537": {
		"code_points": {
			"base": "1f537",
			"non_fully_qualified": "1f537",
			"decimal": "&#128311;"
		},
		"name": "large blue diamond",
		"shortname": ":large_blue_diamond:",
		"category": "symbols",
		"emoji_order": "2168",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol"]
	},
	"1f538": {
		"code_points": {
			"base": "1f538",
			"non_fully_qualified": "1f538",
			"decimal": "&#128312;"
		},
		"name": "small orange diamond",
		"shortname": ":small_orange_diamond:",
		"category": "symbols",
		"emoji_order": "2169",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol"]
	},
	"1f539": {
		"code_points": {
			"base": "1f539",
			"non_fully_qualified": "1f539",
			"decimal": "&#128313;"
		},
		"name": "small blue diamond",
		"shortname": ":small_blue_diamond:",
		"category": "symbols",
		"emoji_order": "2170",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol"]
	},
	"1f53a": {
		"code_points": {
			"base": "1f53a",
			"non_fully_qualified": "1f53a",
			"decimal": "&#128314;"
		},
		"name": "up-pointing red triangle",
		"shortname": ":small_red_triangle:",
		"category": "symbols",
		"emoji_order": "2171",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "triangle"]
	},
	"1f53b": {
		"code_points": {
			"base": "1f53b",
			"non_fully_qualified": "1f53b",
			"decimal": "&#128315;"
		},
		"name": "down-pointing red triangle",
		"shortname": ":small_red_triangle_down:",
		"category": "symbols",
		"emoji_order": "2172",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "triangle"]
	},
	"1f4a0": {
		"code_points": {
			"base": "1f4a0",
			"non_fully_qualified": "1f4a0",
			"decimal": "&#128160;"
		},
		"name": "diamond shape with a dot inside",
		"shortname": ":diamond_shape_with_a_dot_inside:",
		"category": "symbols",
		"emoji_order": "2173",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"1f518": {
		"code_points": {
			"base": "1f518",
			"non_fully_qualified": "1f518",
			"decimal": "&#128280;"
		},
		"name": "radio button",
		"shortname": ":radio_button:",
		"category": "symbols",
		"emoji_order": "2174",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol", "circle"]
	},
	"1f532": {
		"code_points": {
			"base": "1f532",
			"non_fully_qualified": "1f532",
			"decimal": "&#128306;"
		},
		"name": "black square button",
		"shortname": ":black_square_button:",
		"category": "symbols",
		"emoji_order": "2175",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"1f533": {
		"code_points": {
			"base": "1f533",
			"non_fully_qualified": "1f533",
			"decimal": "&#128307;"
		},
		"name": "white square button",
		"shortname": ":white_square_button:",
		"category": "symbols",
		"emoji_order": "2176",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "square"]
	},
	"26aa": {
		"code_points": {
			"base": "26aa",
			"non_fully_qualified": "26aa",
			"fully_qualified": "26aa-fe0f",
			"decimal": "&#9898;"
		},
		"name": "white circle",
		"shortname": ":white_circle:",
		"category": "symbols",
		"emoji_order": "2177",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "circle"]
	},
	"26ab": {
		"code_points": {
			"base": "26ab",
			"non_fully_qualified": "26ab",
			"fully_qualified": "26ab-fe0f",
			"decimal": "&#9899;"
		},
		"name": "black circle",
		"shortname": ":black_circle:",
		"category": "symbols",
		"emoji_order": "2178",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "circle"]
	},
	"1f534": {
		"code_points": {
			"base": "1f534",
			"non_fully_qualified": "1f534",
			"decimal": "&#128308;"
		},
		"name": "red circle",
		"shortname": ":red_circle:",
		"category": "symbols",
		"emoji_order": "2179",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "circle"]
	},
	"1f535": {
		"code_points": {
			"base": "1f535",
			"non_fully_qualified": "1f535",
			"decimal": "&#128309;"
		},
		"name": "blue circle",
		"shortname": ":blue_circle:",
		"category": "symbols",
		"emoji_order": "2180",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["shapes", "symbol", "circle"]
	},
	"1f3c1": {
		"code_points": {
			"base": "1f3c1",
			"non_fully_qualified": "1f3c1",
			"decimal": "&#127937;"
		},
		"name": "chequered flag",
		"shortname": ":checkered_flag:",
		"category": "travel",
		"emoji_order": "2181",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f6a9": {
		"code_points": {
			"base": "1f6a9",
			"non_fully_qualified": "1f6a9",
			"decimal": "&#128681;"
		},
		"name": "triangular flag on post",
		"shortname": ":triangular_flag_on_post:",
		"category": "objects",
		"emoji_order": "2182",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f38c": {
		"code_points": {
			"base": "1f38c",
			"non_fully_qualified": "1f38c",
			"decimal": "&#127884;"
		},
		"name": "crossed flags",
		"shortname": ":crossed_flags:",
		"category": "objects",
		"emoji_order": "2183",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["object", "japan"]
	},
	"1f3f4": {
		"code_points": {
			"base": "1f3f4",
			"non_fully_qualified": "1f3f4",
			"decimal": "&#127988;"
		},
		"name": "waving black flag",
		"shortname": ":flag_black:",
		"category": "objects",
		"emoji_order": "2184",
		"shortname_alternates": [":waving_black_flag:"],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f3f3": {
		"code_points": {
			"base": "1f3f3",
			"non_fully_qualified": "1f3f3",
			"fully_qualified": "1f3f3-fe0f",
			"decimal": "&#127987;"
		},
		"name": "waving white flag",
		"shortname": ":flag_white:",
		"category": "objects",
		"emoji_order": "2185",
		"shortname_alternates": [":waving_white_flag:"],
		"ascii": [],
		"keywords": ["object"]
	},
	"1f3f3-1f308": {
		"code_points": {
			"base": "1f3f3-1f308",
			"non_fully_qualified": "1f3f3-1f308",
			"decimal": "&#127987;&#127752;"
		},
		"name": "rainbow_flag",
		"shortname": ":rainbow_flag:",
		"category": "objects",
		"emoji_order": "2186",
		"shortname_alternates": [":gay_pride_flag:"],
		"ascii": [],
		"keywords": []
	},
	"1f1e6-1f1e8": {
		"code_points": {
			"base": "1f1e6-1f1e8",
			"non_fully_qualified": "1f1e6-1f1e8",
			"decimal": "&#127462;&#127464;"
		},
		"name": "ascension",
		"shortname": ":flag_ac:",
		"category": "flags",
		"emoji_order": "2187",
		"shortname_alternates": [":ac:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1e9": {
		"code_points": {
			"base": "1f1e6-1f1e9",
			"non_fully_qualified": "1f1e6-1f1e9",
			"decimal": "&#127462;&#127465;"
		},
		"name": "andorra",
		"shortname": ":flag_ad:",
		"category": "flags",
		"emoji_order": "2188",
		"shortname_alternates": [":ad:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1ea": {
		"code_points": {
			"base": "1f1e6-1f1ea",
			"non_fully_qualified": "1f1e6-1f1ea",
			"decimal": "&#127462;&#127466;"
		},
		"name": "the united arab emirates",
		"shortname": ":flag_ae:",
		"category": "flags",
		"emoji_order": "2189",
		"shortname_alternates": [":ae:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1eb": {
		"code_points": {
			"base": "1f1e6-1f1eb",
			"non_fully_qualified": "1f1e6-1f1eb",
			"decimal": "&#127462;&#127467;"
		},
		"name": "afghanistan",
		"shortname": ":flag_af:",
		"category": "flags",
		"emoji_order": "2190",
		"shortname_alternates": [":af:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1ec": {
		"code_points": {
			"base": "1f1e6-1f1ec",
			"non_fully_qualified": "1f1e6-1f1ec",
			"decimal": "&#127462;&#127468;"
		},
		"name": "antigua and barbuda",
		"shortname": ":flag_ag:",
		"category": "flags",
		"emoji_order": "2191",
		"shortname_alternates": [":ag:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1ee": {
		"code_points": {
			"base": "1f1e6-1f1ee",
			"non_fully_qualified": "1f1e6-1f1ee",
			"decimal": "&#127462;&#127470;"
		},
		"name": "anguilla",
		"shortname": ":flag_ai:",
		"category": "flags",
		"emoji_order": "2192",
		"shortname_alternates": [":ai:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1f1": {
		"code_points": {
			"base": "1f1e6-1f1f1",
			"non_fully_qualified": "1f1e6-1f1f1",
			"decimal": "&#127462;&#127473;"
		},
		"name": "albania",
		"shortname": ":flag_al:",
		"category": "flags",
		"emoji_order": "2193",
		"shortname_alternates": [":al:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1f2": {
		"code_points": {
			"base": "1f1e6-1f1f2",
			"non_fully_qualified": "1f1e6-1f1f2",
			"decimal": "&#127462;&#127474;"
		},
		"name": "armenia",
		"shortname": ":flag_am:",
		"category": "flags",
		"emoji_order": "2194",
		"shortname_alternates": [":am:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1f4": {
		"code_points": {
			"base": "1f1e6-1f1f4",
			"non_fully_qualified": "1f1e6-1f1f4",
			"decimal": "&#127462;&#127476;"
		},
		"name": "angola",
		"shortname": ":flag_ao:",
		"category": "flags",
		"emoji_order": "2195",
		"shortname_alternates": [":ao:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1f6": {
		"code_points": {
			"base": "1f1e6-1f1f6",
			"non_fully_qualified": "1f1e6-1f1f6",
			"decimal": "&#127462;&#127478;"
		},
		"name": "antarctica",
		"shortname": ":flag_aq:",
		"category": "flags",
		"emoji_order": "2196",
		"shortname_alternates": [":aq:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1f7": {
		"code_points": {
			"base": "1f1e6-1f1f7",
			"non_fully_qualified": "1f1e6-1f1f7",
			"decimal": "&#127462;&#127479;"
		},
		"name": "argentina",
		"shortname": ":flag_ar:",
		"category": "flags",
		"emoji_order": "2197",
		"shortname_alternates": [":ar:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1f8": {
		"code_points": {
			"base": "1f1e6-1f1f8",
			"non_fully_qualified": "1f1e6-1f1f8",
			"decimal": "&#127462;&#127480;"
		},
		"name": "american samoa",
		"shortname": ":flag_as:",
		"category": "flags",
		"emoji_order": "2198",
		"shortname_alternates": [":as:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1f9": {
		"code_points": {
			"base": "1f1e6-1f1f9",
			"non_fully_qualified": "1f1e6-1f1f9",
			"decimal": "&#127462;&#127481;"
		},
		"name": "austria",
		"shortname": ":flag_at:",
		"category": "flags",
		"emoji_order": "2199",
		"shortname_alternates": [":at:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1fa": {
		"code_points": {
			"base": "1f1e6-1f1fa",
			"non_fully_qualified": "1f1e6-1f1fa",
			"decimal": "&#127462;&#127482;"
		},
		"name": "australia",
		"shortname": ":flag_au:",
		"category": "flags",
		"emoji_order": "2200",
		"shortname_alternates": [":au:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1fc": {
		"code_points": {
			"base": "1f1e6-1f1fc",
			"non_fully_qualified": "1f1e6-1f1fc",
			"decimal": "&#127462;&#127484;"
		},
		"name": "aruba",
		"shortname": ":flag_aw:",
		"category": "flags",
		"emoji_order": "2201",
		"shortname_alternates": [":aw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1fd": {
		"code_points": {
			"base": "1f1e6-1f1fd",
			"non_fully_qualified": "1f1e6-1f1fd",
			"decimal": "&#127462;&#127485;"
		},
		"name": "\u00e5land islands",
		"shortname": ":flag_ax:",
		"category": "flags",
		"emoji_order": "2202",
		"shortname_alternates": [":ax:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e6-1f1ff": {
		"code_points": {
			"base": "1f1e6-1f1ff",
			"non_fully_qualified": "1f1e6-1f1ff",
			"decimal": "&#127462;&#127487;"
		},
		"name": "azerbaijan",
		"shortname": ":flag_az:",
		"category": "flags",
		"emoji_order": "2203",
		"shortname_alternates": [":az:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1e6": {
		"code_points": {
			"base": "1f1e7-1f1e6",
			"non_fully_qualified": "1f1e7-1f1e6",
			"decimal": "&#127463;&#127462;"
		},
		"name": "bosnia and herzegovina",
		"shortname": ":flag_ba:",
		"category": "flags",
		"emoji_order": "2204",
		"shortname_alternates": [":ba:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1e7": {
		"code_points": {
			"base": "1f1e7-1f1e7",
			"non_fully_qualified": "1f1e7-1f1e7",
			"decimal": "&#127463;&#127463;"
		},
		"name": "barbados",
		"shortname": ":flag_bb:",
		"category": "flags",
		"emoji_order": "2205",
		"shortname_alternates": [":bb:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1e9": {
		"code_points": {
			"base": "1f1e7-1f1e9",
			"non_fully_qualified": "1f1e7-1f1e9",
			"decimal": "&#127463;&#127465;"
		},
		"name": "bangladesh",
		"shortname": ":flag_bd:",
		"category": "flags",
		"emoji_order": "2206",
		"shortname_alternates": [":bd:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1ea": {
		"code_points": {
			"base": "1f1e7-1f1ea",
			"non_fully_qualified": "1f1e7-1f1ea",
			"decimal": "&#127463;&#127466;"
		},
		"name": "belgium",
		"shortname": ":flag_be:",
		"category": "flags",
		"emoji_order": "2207",
		"shortname_alternates": [":be:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1eb": {
		"code_points": {
			"base": "1f1e7-1f1eb",
			"non_fully_qualified": "1f1e7-1f1eb",
			"decimal": "&#127463;&#127467;"
		},
		"name": "burkina faso",
		"shortname": ":flag_bf:",
		"category": "flags",
		"emoji_order": "2208",
		"shortname_alternates": [":bf:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1ec": {
		"code_points": {
			"base": "1f1e7-1f1ec",
			"non_fully_qualified": "1f1e7-1f1ec",
			"decimal": "&#127463;&#127468;"
		},
		"name": "bulgaria",
		"shortname": ":flag_bg:",
		"category": "flags",
		"emoji_order": "2209",
		"shortname_alternates": [":bg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1ed": {
		"code_points": {
			"base": "1f1e7-1f1ed",
			"non_fully_qualified": "1f1e7-1f1ed",
			"decimal": "&#127463;&#127469;"
		},
		"name": "bahrain",
		"shortname": ":flag_bh:",
		"category": "flags",
		"emoji_order": "2210",
		"shortname_alternates": [":bh:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1ee": {
		"code_points": {
			"base": "1f1e7-1f1ee",
			"non_fully_qualified": "1f1e7-1f1ee",
			"decimal": "&#127463;&#127470;"
		},
		"name": "burundi",
		"shortname": ":flag_bi:",
		"category": "flags",
		"emoji_order": "2211",
		"shortname_alternates": [":bi:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1ef": {
		"code_points": {
			"base": "1f1e7-1f1ef",
			"non_fully_qualified": "1f1e7-1f1ef",
			"decimal": "&#127463;&#127471;"
		},
		"name": "benin",
		"shortname": ":flag_bj:",
		"category": "flags",
		"emoji_order": "2212",
		"shortname_alternates": [":bj:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1f1": {
		"code_points": {
			"base": "1f1e7-1f1f1",
			"non_fully_qualified": "1f1e7-1f1f1",
			"decimal": "&#127463;&#127473;"
		},
		"name": "saint barth\u00e9lemy",
		"shortname": ":flag_bl:",
		"category": "flags",
		"emoji_order": "2213",
		"shortname_alternates": [":bl:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1f2": {
		"code_points": {
			"base": "1f1e7-1f1f2",
			"non_fully_qualified": "1f1e7-1f1f2",
			"decimal": "&#127463;&#127474;"
		},
		"name": "bermuda",
		"shortname": ":flag_bm:",
		"category": "flags",
		"emoji_order": "2214",
		"shortname_alternates": [":bm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1f3": {
		"code_points": {
			"base": "1f1e7-1f1f3",
			"non_fully_qualified": "1f1e7-1f1f3",
			"decimal": "&#127463;&#127475;"
		},
		"name": "brunei",
		"shortname": ":flag_bn:",
		"category": "flags",
		"emoji_order": "2215",
		"shortname_alternates": [":bn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1f4": {
		"code_points": {
			"base": "1f1e7-1f1f4",
			"non_fully_qualified": "1f1e7-1f1f4",
			"decimal": "&#127463;&#127476;"
		},
		"name": "bolivia",
		"shortname": ":flag_bo:",
		"category": "flags",
		"emoji_order": "2216",
		"shortname_alternates": [":bo:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1f6": {
		"code_points": {
			"base": "1f1e7-1f1f6",
			"non_fully_qualified": "1f1e7-1f1f6",
			"decimal": "&#127463;&#127478;"
		},
		"name": "caribbean netherlands",
		"shortname": ":flag_bq:",
		"category": "flags",
		"emoji_order": "2217",
		"shortname_alternates": [":bq:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1f7": {
		"code_points": {
			"base": "1f1e7-1f1f7",
			"non_fully_qualified": "1f1e7-1f1f7",
			"decimal": "&#127463;&#127479;"
		},
		"name": "brazil",
		"shortname": ":flag_br:",
		"category": "flags",
		"emoji_order": "2218",
		"shortname_alternates": [":br:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1f8": {
		"code_points": {
			"base": "1f1e7-1f1f8",
			"non_fully_qualified": "1f1e7-1f1f8",
			"decimal": "&#127463;&#127480;"
		},
		"name": "the bahamas",
		"shortname": ":flag_bs:",
		"category": "flags",
		"emoji_order": "2219",
		"shortname_alternates": [":bs:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1f9": {
		"code_points": {
			"base": "1f1e7-1f1f9",
			"non_fully_qualified": "1f1e7-1f1f9",
			"decimal": "&#127463;&#127481;"
		},
		"name": "bhutan",
		"shortname": ":flag_bt:",
		"category": "flags",
		"emoji_order": "2220",
		"shortname_alternates": [":bt:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1fb": {
		"code_points": {
			"base": "1f1e7-1f1fb",
			"non_fully_qualified": "1f1e7-1f1fb",
			"decimal": "&#127463;&#127483;"
		},
		"name": "bouvet island",
		"shortname": ":flag_bv:",
		"category": "flags",
		"emoji_order": "2221",
		"shortname_alternates": [":bv:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1fc": {
		"code_points": {
			"base": "1f1e7-1f1fc",
			"non_fully_qualified": "1f1e7-1f1fc",
			"decimal": "&#127463;&#127484;"
		},
		"name": "botswana",
		"shortname": ":flag_bw:",
		"category": "flags",
		"emoji_order": "2222",
		"shortname_alternates": [":bw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1fe": {
		"code_points": {
			"base": "1f1e7-1f1fe",
			"non_fully_qualified": "1f1e7-1f1fe",
			"decimal": "&#127463;&#127486;"
		},
		"name": "belarus",
		"shortname": ":flag_by:",
		"category": "flags",
		"emoji_order": "2223",
		"shortname_alternates": [":by:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e7-1f1ff": {
		"code_points": {
			"base": "1f1e7-1f1ff",
			"non_fully_qualified": "1f1e7-1f1ff",
			"decimal": "&#127463;&#127487;"
		},
		"name": "belize",
		"shortname": ":flag_bz:",
		"category": "flags",
		"emoji_order": "2224",
		"shortname_alternates": [":bz:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1e6": {
		"code_points": {
			"base": "1f1e8-1f1e6",
			"non_fully_qualified": "1f1e8-1f1e6",
			"decimal": "&#127464;&#127462;"
		},
		"name": "canada",
		"shortname": ":flag_ca:",
		"category": "flags",
		"emoji_order": "2225",
		"shortname_alternates": [":ca:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1e8": {
		"code_points": {
			"base": "1f1e8-1f1e8",
			"non_fully_qualified": "1f1e8-1f1e8",
			"decimal": "&#127464;&#127464;"
		},
		"name": "cocos (keeling) islands",
		"shortname": ":flag_cc:",
		"category": "flags",
		"emoji_order": "2226",
		"shortname_alternates": [":cc:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1e9": {
		"code_points": {
			"base": "1f1e8-1f1e9",
			"non_fully_qualified": "1f1e8-1f1e9",
			"decimal": "&#127464;&#127465;"
		},
		"name": "the democratic republic of the congo",
		"shortname": ":flag_cd:",
		"category": "flags",
		"emoji_order": "2227",
		"shortname_alternates": [":congo:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1eb": {
		"code_points": {
			"base": "1f1e8-1f1eb",
			"non_fully_qualified": "1f1e8-1f1eb",
			"decimal": "&#127464;&#127467;"
		},
		"name": "central african republic",
		"shortname": ":flag_cf:",
		"category": "flags",
		"emoji_order": "2228",
		"shortname_alternates": [":cf:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1ec": {
		"code_points": {
			"base": "1f1e8-1f1ec",
			"non_fully_qualified": "1f1e8-1f1ec",
			"decimal": "&#127464;&#127468;"
		},
		"name": "the republic of the congo",
		"shortname": ":flag_cg:",
		"category": "flags",
		"emoji_order": "2229",
		"shortname_alternates": [":cg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1ed": {
		"code_points": {
			"base": "1f1e8-1f1ed",
			"non_fully_qualified": "1f1e8-1f1ed",
			"decimal": "&#127464;&#127469;"
		},
		"name": "switzerland",
		"shortname": ":flag_ch:",
		"category": "flags",
		"emoji_order": "2230",
		"shortname_alternates": [":ch:"],
		"ascii": [],
		"keywords": ["country", "neutral", "flag"]
	},
	"1f1e8-1f1ee": {
		"code_points": {
			"base": "1f1e8-1f1ee",
			"non_fully_qualified": "1f1e8-1f1ee",
			"decimal": "&#127464;&#127470;"
		},
		"name": "c\u00f4te d\u2019ivoire",
		"shortname": ":flag_ci:",
		"category": "flags",
		"emoji_order": "2231",
		"shortname_alternates": [":ci:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1f0": {
		"code_points": {
			"base": "1f1e8-1f1f0",
			"non_fully_qualified": "1f1e8-1f1f0",
			"decimal": "&#127464;&#127472;"
		},
		"name": "cook islands",
		"shortname": ":flag_ck:",
		"category": "flags",
		"emoji_order": "2232",
		"shortname_alternates": [":ck:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1f1": {
		"code_points": {
			"base": "1f1e8-1f1f1",
			"non_fully_qualified": "1f1e8-1f1f1",
			"decimal": "&#127464;&#127473;"
		},
		"name": "chile",
		"shortname": ":flag_cl:",
		"category": "flags",
		"emoji_order": "2233",
		"shortname_alternates": [":chile:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1f2": {
		"code_points": {
			"base": "1f1e8-1f1f2",
			"non_fully_qualified": "1f1e8-1f1f2",
			"decimal": "&#127464;&#127474;"
		},
		"name": "cameroon",
		"shortname": ":flag_cm:",
		"category": "flags",
		"emoji_order": "2234",
		"shortname_alternates": [":cm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1f3": {
		"code_points": {
			"base": "1f1e8-1f1f3",
			"non_fully_qualified": "1f1e8-1f1f3",
			"decimal": "&#127464;&#127475;"
		},
		"name": "china",
		"shortname": ":flag_cn:",
		"category": "flags",
		"emoji_order": "2235",
		"shortname_alternates": [":cn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1f4": {
		"code_points": {
			"base": "1f1e8-1f1f4",
			"non_fully_qualified": "1f1e8-1f1f4",
			"decimal": "&#127464;&#127476;"
		},
		"name": "colombia",
		"shortname": ":flag_co:",
		"category": "flags",
		"emoji_order": "2236",
		"shortname_alternates": [":co:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1f5": {
		"code_points": {
			"base": "1f1e8-1f1f5",
			"non_fully_qualified": "1f1e8-1f1f5",
			"decimal": "&#127464;&#127477;"
		},
		"name": "clipperton island",
		"shortname": ":flag_cp:",
		"category": "flags",
		"emoji_order": "2237",
		"shortname_alternates": [":cp:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1f7": {
		"code_points": {
			"base": "1f1e8-1f1f7",
			"non_fully_qualified": "1f1e8-1f1f7",
			"decimal": "&#127464;&#127479;"
		},
		"name": "costa rica",
		"shortname": ":flag_cr:",
		"category": "flags",
		"emoji_order": "2238",
		"shortname_alternates": [":cr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1fa": {
		"code_points": {
			"base": "1f1e8-1f1fa",
			"non_fully_qualified": "1f1e8-1f1fa",
			"decimal": "&#127464;&#127482;"
		},
		"name": "cuba",
		"shortname": ":flag_cu:",
		"category": "flags",
		"emoji_order": "2239",
		"shortname_alternates": [":cu:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1fb": {
		"code_points": {
			"base": "1f1e8-1f1fb",
			"non_fully_qualified": "1f1e8-1f1fb",
			"decimal": "&#127464;&#127483;"
		},
		"name": "cape verde",
		"shortname": ":flag_cv:",
		"category": "flags",
		"emoji_order": "2240",
		"shortname_alternates": [":cv:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1fc": {
		"code_points": {
			"base": "1f1e8-1f1fc",
			"non_fully_qualified": "1f1e8-1f1fc",
			"decimal": "&#127464;&#127484;"
		},
		"name": "cura\u00e7ao",
		"shortname": ":flag_cw:",
		"category": "flags",
		"emoji_order": "2241",
		"shortname_alternates": [":cw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1fd": {
		"code_points": {
			"base": "1f1e8-1f1fd",
			"non_fully_qualified": "1f1e8-1f1fd",
			"decimal": "&#127464;&#127485;"
		},
		"name": "christmas island",
		"shortname": ":flag_cx:",
		"category": "flags",
		"emoji_order": "2242",
		"shortname_alternates": [":cx:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1fe": {
		"code_points": {
			"base": "1f1e8-1f1fe",
			"non_fully_qualified": "1f1e8-1f1fe",
			"decimal": "&#127464;&#127486;"
		},
		"name": "cyprus",
		"shortname": ":flag_cy:",
		"category": "flags",
		"emoji_order": "2243",
		"shortname_alternates": [":cy:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e8-1f1ff": {
		"code_points": {
			"base": "1f1e8-1f1ff",
			"non_fully_qualified": "1f1e8-1f1ff",
			"decimal": "&#127464;&#127487;"
		},
		"name": "the czech republic",
		"shortname": ":flag_cz:",
		"category": "flags",
		"emoji_order": "2244",
		"shortname_alternates": [":cz:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e9-1f1ea": {
		"code_points": {
			"base": "1f1e9-1f1ea",
			"non_fully_qualified": "1f1e9-1f1ea",
			"decimal": "&#127465;&#127466;"
		},
		"name": "germany",
		"shortname": ":flag_de:",
		"category": "flags",
		"emoji_order": "2245",
		"shortname_alternates": [":de:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e9-1f1ec": {
		"code_points": {
			"base": "1f1e9-1f1ec",
			"non_fully_qualified": "1f1e9-1f1ec",
			"decimal": "&#127465;&#127468;"
		},
		"name": "diego garcia",
		"shortname": ":flag_dg:",
		"category": "flags",
		"emoji_order": "2246",
		"shortname_alternates": [":dg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e9-1f1ef": {
		"code_points": {
			"base": "1f1e9-1f1ef",
			"non_fully_qualified": "1f1e9-1f1ef",
			"decimal": "&#127465;&#127471;"
		},
		"name": "djibouti",
		"shortname": ":flag_dj:",
		"category": "flags",
		"emoji_order": "2247",
		"shortname_alternates": [":dj:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e9-1f1f0": {
		"code_points": {
			"base": "1f1e9-1f1f0",
			"non_fully_qualified": "1f1e9-1f1f0",
			"decimal": "&#127465;&#127472;"
		},
		"name": "denmark",
		"shortname": ":flag_dk:",
		"category": "flags",
		"emoji_order": "2248",
		"shortname_alternates": [":dk:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e9-1f1f2": {
		"code_points": {
			"base": "1f1e9-1f1f2",
			"non_fully_qualified": "1f1e9-1f1f2",
			"decimal": "&#127465;&#127474;"
		},
		"name": "dominica",
		"shortname": ":flag_dm:",
		"category": "flags",
		"emoji_order": "2249",
		"shortname_alternates": [":dm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e9-1f1f4": {
		"code_points": {
			"base": "1f1e9-1f1f4",
			"non_fully_qualified": "1f1e9-1f1f4",
			"decimal": "&#127465;&#127476;"
		},
		"name": "the dominican republic",
		"shortname": ":flag_do:",
		"category": "flags",
		"emoji_order": "2250",
		"shortname_alternates": [":do:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1e9-1f1ff": {
		"code_points": {
			"base": "1f1e9-1f1ff",
			"non_fully_qualified": "1f1e9-1f1ff",
			"decimal": "&#127465;&#127487;"
		},
		"name": "algeria",
		"shortname": ":flag_dz:",
		"category": "flags",
		"emoji_order": "2251",
		"shortname_alternates": [":dz:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ea-1f1e6": {
		"code_points": {
			"base": "1f1ea-1f1e6",
			"non_fully_qualified": "1f1ea-1f1e6",
			"decimal": "&#127466;&#127462;"
		},
		"name": "ceuta, melilla",
		"shortname": ":flag_ea:",
		"category": "flags",
		"emoji_order": "2252",
		"shortname_alternates": [":ea:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ea-1f1e8": {
		"code_points": {
			"base": "1f1ea-1f1e8",
			"non_fully_qualified": "1f1ea-1f1e8",
			"decimal": "&#127466;&#127464;"
		},
		"name": "ecuador",
		"shortname": ":flag_ec:",
		"category": "flags",
		"emoji_order": "2253",
		"shortname_alternates": [":ec:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ea-1f1ea": {
		"code_points": {
			"base": "1f1ea-1f1ea",
			"non_fully_qualified": "1f1ea-1f1ea",
			"decimal": "&#127466;&#127466;"
		},
		"name": "estonia",
		"shortname": ":flag_ee:",
		"category": "flags",
		"emoji_order": "2254",
		"shortname_alternates": [":ee:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ea-1f1ec": {
		"code_points": {
			"base": "1f1ea-1f1ec",
			"non_fully_qualified": "1f1ea-1f1ec",
			"decimal": "&#127466;&#127468;"
		},
		"name": "egypt",
		"shortname": ":flag_eg:",
		"category": "flags",
		"emoji_order": "2255",
		"shortname_alternates": [":eg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ea-1f1ed": {
		"code_points": {
			"base": "1f1ea-1f1ed",
			"non_fully_qualified": "1f1ea-1f1ed",
			"decimal": "&#127466;&#127469;"
		},
		"name": "western sahara",
		"shortname": ":flag_eh:",
		"category": "flags",
		"emoji_order": "2256",
		"shortname_alternates": [":eh:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ea-1f1f7": {
		"code_points": {
			"base": "1f1ea-1f1f7",
			"non_fully_qualified": "1f1ea-1f1f7",
			"decimal": "&#127466;&#127479;"
		},
		"name": "eritrea",
		"shortname": ":flag_er:",
		"category": "flags",
		"emoji_order": "2257",
		"shortname_alternates": [":er:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ea-1f1f8": {
		"code_points": {
			"base": "1f1ea-1f1f8",
			"non_fully_qualified": "1f1ea-1f1f8",
			"decimal": "&#127466;&#127480;"
		},
		"name": "spain",
		"shortname": ":flag_es:",
		"category": "flags",
		"emoji_order": "2258",
		"shortname_alternates": [":es:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ea-1f1f9": {
		"code_points": {
			"base": "1f1ea-1f1f9",
			"non_fully_qualified": "1f1ea-1f1f9",
			"decimal": "&#127466;&#127481;"
		},
		"name": "ethiopia",
		"shortname": ":flag_et:",
		"category": "flags",
		"emoji_order": "2259",
		"shortname_alternates": [":et:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ea-1f1fa": {
		"code_points": {
			"base": "1f1ea-1f1fa",
			"non_fully_qualified": "1f1ea-1f1fa",
			"decimal": "&#127466;&#127482;"
		},
		"name": "european union",
		"shortname": ":flag_eu:",
		"category": "flags",
		"emoji_order": "2260",
		"shortname_alternates": [":eu:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1eb-1f1ee": {
		"code_points": {
			"base": "1f1eb-1f1ee",
			"non_fully_qualified": "1f1eb-1f1ee",
			"decimal": "&#127467;&#127470;"
		},
		"name": "finland",
		"shortname": ":flag_fi:",
		"category": "flags",
		"emoji_order": "2261",
		"shortname_alternates": [":fi:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1eb-1f1ef": {
		"code_points": {
			"base": "1f1eb-1f1ef",
			"non_fully_qualified": "1f1eb-1f1ef",
			"decimal": "&#127467;&#127471;"
		},
		"name": "fiji",
		"shortname": ":flag_fj:",
		"category": "flags",
		"emoji_order": "2262",
		"shortname_alternates": [":fj:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1eb-1f1f0": {
		"code_points": {
			"base": "1f1eb-1f1f0",
			"non_fully_qualified": "1f1eb-1f1f0",
			"decimal": "&#127467;&#127472;"
		},
		"name": "falkland islands",
		"shortname": ":flag_fk:",
		"category": "flags",
		"emoji_order": "2263",
		"shortname_alternates": [":fk:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1eb-1f1f2": {
		"code_points": {
			"base": "1f1eb-1f1f2",
			"non_fully_qualified": "1f1eb-1f1f2",
			"decimal": "&#127467;&#127474;"
		},
		"name": "micronesia",
		"shortname": ":flag_fm:",
		"category": "flags",
		"emoji_order": "2264",
		"shortname_alternates": [":fm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1eb-1f1f4": {
		"code_points": {
			"base": "1f1eb-1f1f4",
			"non_fully_qualified": "1f1eb-1f1f4",
			"decimal": "&#127467;&#127476;"
		},
		"name": "faroe islands",
		"shortname": ":flag_fo:",
		"category": "flags",
		"emoji_order": "2265",
		"shortname_alternates": [":fo:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1eb-1f1f7": {
		"code_points": {
			"base": "1f1eb-1f1f7",
			"non_fully_qualified": "1f1eb-1f1f7",
			"decimal": "&#127467;&#127479;"
		},
		"name": "france",
		"shortname": ":flag_fr:",
		"category": "flags",
		"emoji_order": "2266",
		"shortname_alternates": [":fr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1e6": {
		"code_points": {
			"base": "1f1ec-1f1e6",
			"non_fully_qualified": "1f1ec-1f1e6",
			"decimal": "&#127468;&#127462;"
		},
		"name": "gabon",
		"shortname": ":flag_ga:",
		"category": "flags",
		"emoji_order": "2267",
		"shortname_alternates": [":ga:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1e7": {
		"code_points": {
			"base": "1f1ec-1f1e7",
			"non_fully_qualified": "1f1ec-1f1e7",
			"decimal": "&#127468;&#127463;"
		},
		"name": "great britain",
		"shortname": ":flag_gb:",
		"category": "flags",
		"emoji_order": "2268",
		"shortname_alternates": [":gb:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1e9": {
		"code_points": {
			"base": "1f1ec-1f1e9",
			"non_fully_qualified": "1f1ec-1f1e9",
			"decimal": "&#127468;&#127465;"
		},
		"name": "grenada",
		"shortname": ":flag_gd:",
		"category": "flags",
		"emoji_order": "2269",
		"shortname_alternates": [":gd:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1ea": {
		"code_points": {
			"base": "1f1ec-1f1ea",
			"non_fully_qualified": "1f1ec-1f1ea",
			"decimal": "&#127468;&#127466;"
		},
		"name": "georgia",
		"shortname": ":flag_ge:",
		"category": "flags",
		"emoji_order": "2270",
		"shortname_alternates": [":ge:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1eb": {
		"code_points": {
			"base": "1f1ec-1f1eb",
			"non_fully_qualified": "1f1ec-1f1eb",
			"decimal": "&#127468;&#127467;"
		},
		"name": "french guiana",
		"shortname": ":flag_gf:",
		"category": "flags",
		"emoji_order": "2271",
		"shortname_alternates": [":gf:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1ec": {
		"code_points": {
			"base": "1f1ec-1f1ec",
			"non_fully_qualified": "1f1ec-1f1ec",
			"decimal": "&#127468;&#127468;"
		},
		"name": "guernsey",
		"shortname": ":flag_gg:",
		"category": "flags",
		"emoji_order": "2272",
		"shortname_alternates": [":gg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1ed": {
		"code_points": {
			"base": "1f1ec-1f1ed",
			"non_fully_qualified": "1f1ec-1f1ed",
			"decimal": "&#127468;&#127469;"
		},
		"name": "ghana",
		"shortname": ":flag_gh:",
		"category": "flags",
		"emoji_order": "2273",
		"shortname_alternates": [":gh:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1ee": {
		"code_points": {
			"base": "1f1ec-1f1ee",
			"non_fully_qualified": "1f1ec-1f1ee",
			"decimal": "&#127468;&#127470;"
		},
		"name": "gibraltar",
		"shortname": ":flag_gi:",
		"category": "flags",
		"emoji_order": "2274",
		"shortname_alternates": [":gi:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1f1": {
		"code_points": {
			"base": "1f1ec-1f1f1",
			"non_fully_qualified": "1f1ec-1f1f1",
			"decimal": "&#127468;&#127473;"
		},
		"name": "greenland",
		"shortname": ":flag_gl:",
		"category": "flags",
		"emoji_order": "2275",
		"shortname_alternates": [":gl:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1f2": {
		"code_points": {
			"base": "1f1ec-1f1f2",
			"non_fully_qualified": "1f1ec-1f1f2",
			"decimal": "&#127468;&#127474;"
		},
		"name": "the gambia",
		"shortname": ":flag_gm:",
		"category": "flags",
		"emoji_order": "2276",
		"shortname_alternates": [":gm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1f3": {
		"code_points": {
			"base": "1f1ec-1f1f3",
			"non_fully_qualified": "1f1ec-1f1f3",
			"decimal": "&#127468;&#127475;"
		},
		"name": "guinea",
		"shortname": ":flag_gn:",
		"category": "flags",
		"emoji_order": "2277",
		"shortname_alternates": [":gn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1f5": {
		"code_points": {
			"base": "1f1ec-1f1f5",
			"non_fully_qualified": "1f1ec-1f1f5",
			"decimal": "&#127468;&#127477;"
		},
		"name": "guadeloupe",
		"shortname": ":flag_gp:",
		"category": "flags",
		"emoji_order": "2278",
		"shortname_alternates": [":gp:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1f6": {
		"code_points": {
			"base": "1f1ec-1f1f6",
			"non_fully_qualified": "1f1ec-1f1f6",
			"decimal": "&#127468;&#127478;"
		},
		"name": "equatorial guinea",
		"shortname": ":flag_gq:",
		"category": "flags",
		"emoji_order": "2279",
		"shortname_alternates": [":gq:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1f7": {
		"code_points": {
			"base": "1f1ec-1f1f7",
			"non_fully_qualified": "1f1ec-1f1f7",
			"decimal": "&#127468;&#127479;"
		},
		"name": "greece",
		"shortname": ":flag_gr:",
		"category": "flags",
		"emoji_order": "2280",
		"shortname_alternates": [":gr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1f8": {
		"code_points": {
			"base": "1f1ec-1f1f8",
			"non_fully_qualified": "1f1ec-1f1f8",
			"decimal": "&#127468;&#127480;"
		},
		"name": "south georgia",
		"shortname": ":flag_gs:",
		"category": "flags",
		"emoji_order": "2281",
		"shortname_alternates": [":gs:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1f9": {
		"code_points": {
			"base": "1f1ec-1f1f9",
			"non_fully_qualified": "1f1ec-1f1f9",
			"decimal": "&#127468;&#127481;"
		},
		"name": "guatemala",
		"shortname": ":flag_gt:",
		"category": "flags",
		"emoji_order": "2282",
		"shortname_alternates": [":gt:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1fa": {
		"code_points": {
			"base": "1f1ec-1f1fa",
			"non_fully_qualified": "1f1ec-1f1fa",
			"decimal": "&#127468;&#127482;"
		},
		"name": "guam",
		"shortname": ":flag_gu:",
		"category": "flags",
		"emoji_order": "2283",
		"shortname_alternates": [":gu:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1fc": {
		"code_points": {
			"base": "1f1ec-1f1fc",
			"non_fully_qualified": "1f1ec-1f1fc",
			"decimal": "&#127468;&#127484;"
		},
		"name": "guinea-bissau",
		"shortname": ":flag_gw:",
		"category": "flags",
		"emoji_order": "2284",
		"shortname_alternates": [":gw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ec-1f1fe": {
		"code_points": {
			"base": "1f1ec-1f1fe",
			"non_fully_qualified": "1f1ec-1f1fe",
			"decimal": "&#127468;&#127486;"
		},
		"name": "guyana",
		"shortname": ":flag_gy:",
		"category": "flags",
		"emoji_order": "2285",
		"shortname_alternates": [":gy:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ed-1f1f0": {
		"code_points": {
			"base": "1f1ed-1f1f0",
			"non_fully_qualified": "1f1ed-1f1f0",
			"decimal": "&#127469;&#127472;"
		},
		"name": "hong kong",
		"shortname": ":flag_hk:",
		"category": "flags",
		"emoji_order": "2286",
		"shortname_alternates": [":hk:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ed-1f1f2": {
		"code_points": {
			"base": "1f1ed-1f1f2",
			"non_fully_qualified": "1f1ed-1f1f2",
			"decimal": "&#127469;&#127474;"
		},
		"name": "heard island and mcdonald islands",
		"shortname": ":flag_hm:",
		"category": "flags",
		"emoji_order": "2287",
		"shortname_alternates": [":hm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ed-1f1f3": {
		"code_points": {
			"base": "1f1ed-1f1f3",
			"non_fully_qualified": "1f1ed-1f1f3",
			"decimal": "&#127469;&#127475;"
		},
		"name": "honduras",
		"shortname": ":flag_hn:",
		"category": "flags",
		"emoji_order": "2288",
		"shortname_alternates": [":hn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ed-1f1f7": {
		"code_points": {
			"base": "1f1ed-1f1f7",
			"non_fully_qualified": "1f1ed-1f1f7",
			"decimal": "&#127469;&#127479;"
		},
		"name": "croatia",
		"shortname": ":flag_hr:",
		"category": "flags",
		"emoji_order": "2289",
		"shortname_alternates": [":hr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ed-1f1f9": {
		"code_points": {
			"base": "1f1ed-1f1f9",
			"non_fully_qualified": "1f1ed-1f1f9",
			"decimal": "&#127469;&#127481;"
		},
		"name": "haiti",
		"shortname": ":flag_ht:",
		"category": "flags",
		"emoji_order": "2290",
		"shortname_alternates": [":ht:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ed-1f1fa": {
		"code_points": {
			"base": "1f1ed-1f1fa",
			"non_fully_qualified": "1f1ed-1f1fa",
			"decimal": "&#127469;&#127482;"
		},
		"name": "hungary",
		"shortname": ":flag_hu:",
		"category": "flags",
		"emoji_order": "2291",
		"shortname_alternates": [":hu:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1e8": {
		"code_points": {
			"base": "1f1ee-1f1e8",
			"non_fully_qualified": "1f1ee-1f1e8",
			"decimal": "&#127470;&#127464;"
		},
		"name": "canary islands",
		"shortname": ":flag_ic:",
		"category": "flags",
		"emoji_order": "2292",
		"shortname_alternates": [":ic:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1e9": {
		"code_points": {
			"base": "1f1ee-1f1e9",
			"non_fully_qualified": "1f1ee-1f1e9",
			"decimal": "&#127470;&#127465;"
		},
		"name": "indonesia",
		"shortname": ":flag_id:",
		"category": "flags",
		"emoji_order": "2293",
		"shortname_alternates": [":indonesia:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1ea": {
		"code_points": {
			"base": "1f1ee-1f1ea",
			"non_fully_qualified": "1f1ee-1f1ea",
			"decimal": "&#127470;&#127466;"
		},
		"name": "ireland",
		"shortname": ":flag_ie:",
		"category": "flags",
		"emoji_order": "2294",
		"shortname_alternates": [":ie:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1f1": {
		"code_points": {
			"base": "1f1ee-1f1f1",
			"non_fully_qualified": "1f1ee-1f1f1",
			"decimal": "&#127470;&#127473;"
		},
		"name": "israel",
		"shortname": ":flag_il:",
		"category": "flags",
		"emoji_order": "2295",
		"shortname_alternates": [":il:"],
		"ascii": [],
		"keywords": ["jew", "country", "flag"]
	},
	"1f1ee-1f1f2": {
		"code_points": {
			"base": "1f1ee-1f1f2",
			"non_fully_qualified": "1f1ee-1f1f2",
			"decimal": "&#127470;&#127474;"
		},
		"name": "isle of man",
		"shortname": ":flag_im:",
		"category": "flags",
		"emoji_order": "2296",
		"shortname_alternates": [":im:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1f3": {
		"code_points": {
			"base": "1f1ee-1f1f3",
			"non_fully_qualified": "1f1ee-1f1f3",
			"decimal": "&#127470;&#127475;"
		},
		"name": "india",
		"shortname": ":flag_in:",
		"category": "flags",
		"emoji_order": "2297",
		"shortname_alternates": [":in:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1f4": {
		"code_points": {
			"base": "1f1ee-1f1f4",
			"non_fully_qualified": "1f1ee-1f1f4",
			"decimal": "&#127470;&#127476;"
		},
		"name": "british indian ocean territory",
		"shortname": ":flag_io:",
		"category": "flags",
		"emoji_order": "2298",
		"shortname_alternates": [":io:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1f6": {
		"code_points": {
			"base": "1f1ee-1f1f6",
			"non_fully_qualified": "1f1ee-1f1f6",
			"decimal": "&#127470;&#127478;"
		},
		"name": "iraq",
		"shortname": ":flag_iq:",
		"category": "flags",
		"emoji_order": "2299",
		"shortname_alternates": [":iq:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1f7": {
		"code_points": {
			"base": "1f1ee-1f1f7",
			"non_fully_qualified": "1f1ee-1f1f7",
			"decimal": "&#127470;&#127479;"
		},
		"name": "iran",
		"shortname": ":flag_ir:",
		"category": "flags",
		"emoji_order": "2300",
		"shortname_alternates": [":ir:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1f8": {
		"code_points": {
			"base": "1f1ee-1f1f8",
			"non_fully_qualified": "1f1ee-1f1f8",
			"decimal": "&#127470;&#127480;"
		},
		"name": "iceland",
		"shortname": ":flag_is:",
		"category": "flags",
		"emoji_order": "2301",
		"shortname_alternates": [":is:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ee-1f1f9": {
		"code_points": {
			"base": "1f1ee-1f1f9",
			"non_fully_qualified": "1f1ee-1f1f9",
			"decimal": "&#127470;&#127481;"
		},
		"name": "italy",
		"shortname": ":flag_it:",
		"category": "flags",
		"emoji_order": "2302",
		"shortname_alternates": [":it:"],
		"ascii": [],
		"keywords": ["italian", "country", "flag"]
	},
	"1f1ef-1f1ea": {
		"code_points": {
			"base": "1f1ef-1f1ea",
			"non_fully_qualified": "1f1ef-1f1ea",
			"decimal": "&#127471;&#127466;"
		},
		"name": "jersey",
		"shortname": ":flag_je:",
		"category": "flags",
		"emoji_order": "2303",
		"shortname_alternates": [":je:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ef-1f1f2": {
		"code_points": {
			"base": "1f1ef-1f1f2",
			"non_fully_qualified": "1f1ef-1f1f2",
			"decimal": "&#127471;&#127474;"
		},
		"name": "jamaica",
		"shortname": ":flag_jm:",
		"category": "flags",
		"emoji_order": "2304",
		"shortname_alternates": [":jm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ef-1f1f4": {
		"code_points": {
			"base": "1f1ef-1f1f4",
			"non_fully_qualified": "1f1ef-1f1f4",
			"decimal": "&#127471;&#127476;"
		},
		"name": "jordan",
		"shortname": ":flag_jo:",
		"category": "flags",
		"emoji_order": "2305",
		"shortname_alternates": [":jo:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ef-1f1f5": {
		"code_points": {
			"base": "1f1ef-1f1f5",
			"non_fully_qualified": "1f1ef-1f1f5",
			"decimal": "&#127471;&#127477;"
		},
		"name": "japan",
		"shortname": ":flag_jp:",
		"category": "flags",
		"emoji_order": "2306",
		"shortname_alternates": [":jp:"],
		"ascii": [],
		"keywords": ["japan", "country", "flag"]
	},
	"1f1f0-1f1ea": {
		"code_points": {
			"base": "1f1f0-1f1ea",
			"non_fully_qualified": "1f1f0-1f1ea",
			"decimal": "&#127472;&#127466;"
		},
		"name": "kenya",
		"shortname": ":flag_ke:",
		"category": "flags",
		"emoji_order": "2307",
		"shortname_alternates": [":ke:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1ec": {
		"code_points": {
			"base": "1f1f0-1f1ec",
			"non_fully_qualified": "1f1f0-1f1ec",
			"decimal": "&#127472;&#127468;"
		},
		"name": "kyrgyzstan",
		"shortname": ":flag_kg:",
		"category": "flags",
		"emoji_order": "2308",
		"shortname_alternates": [":kg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1ed": {
		"code_points": {
			"base": "1f1f0-1f1ed",
			"non_fully_qualified": "1f1f0-1f1ed",
			"decimal": "&#127472;&#127469;"
		},
		"name": "cambodia",
		"shortname": ":flag_kh:",
		"category": "flags",
		"emoji_order": "2309",
		"shortname_alternates": [":kh:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1ee": {
		"code_points": {
			"base": "1f1f0-1f1ee",
			"non_fully_qualified": "1f1f0-1f1ee",
			"decimal": "&#127472;&#127470;"
		},
		"name": "kiribati",
		"shortname": ":flag_ki:",
		"category": "flags",
		"emoji_order": "2310",
		"shortname_alternates": [":ki:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1f2": {
		"code_points": {
			"base": "1f1f0-1f1f2",
			"non_fully_qualified": "1f1f0-1f1f2",
			"decimal": "&#127472;&#127474;"
		},
		"name": "the comoros",
		"shortname": ":flag_km:",
		"category": "flags",
		"emoji_order": "2311",
		"shortname_alternates": [":km:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1f3": {
		"code_points": {
			"base": "1f1f0-1f1f3",
			"non_fully_qualified": "1f1f0-1f1f3",
			"decimal": "&#127472;&#127475;"
		},
		"name": "saint kitts and nevis",
		"shortname": ":flag_kn:",
		"category": "flags",
		"emoji_order": "2312",
		"shortname_alternates": [":kn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1f5": {
		"code_points": {
			"base": "1f1f0-1f1f5",
			"non_fully_qualified": "1f1f0-1f1f5",
			"decimal": "&#127472;&#127477;"
		},
		"name": "north korea",
		"shortname": ":flag_kp:",
		"category": "flags",
		"emoji_order": "2313",
		"shortname_alternates": [":kp:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1f7": {
		"code_points": {
			"base": "1f1f0-1f1f7",
			"non_fully_qualified": "1f1f0-1f1f7",
			"decimal": "&#127472;&#127479;"
		},
		"name": "korea",
		"shortname": ":flag_kr:",
		"category": "flags",
		"emoji_order": "2314",
		"shortname_alternates": [":kr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1fc": {
		"code_points": {
			"base": "1f1f0-1f1fc",
			"non_fully_qualified": "1f1f0-1f1fc",
			"decimal": "&#127472;&#127484;"
		},
		"name": "kuwait",
		"shortname": ":flag_kw:",
		"category": "flags",
		"emoji_order": "2315",
		"shortname_alternates": [":kw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1fe": {
		"code_points": {
			"base": "1f1f0-1f1fe",
			"non_fully_qualified": "1f1f0-1f1fe",
			"decimal": "&#127472;&#127486;"
		},
		"name": "cayman islands",
		"shortname": ":flag_ky:",
		"category": "flags",
		"emoji_order": "2316",
		"shortname_alternates": [":ky:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f0-1f1ff": {
		"code_points": {
			"base": "1f1f0-1f1ff",
			"non_fully_qualified": "1f1f0-1f1ff",
			"decimal": "&#127472;&#127487;"
		},
		"name": "kazakhstan",
		"shortname": ":flag_kz:",
		"category": "flags",
		"emoji_order": "2317",
		"shortname_alternates": [":kz:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1e6": {
		"code_points": {
			"base": "1f1f1-1f1e6",
			"non_fully_qualified": "1f1f1-1f1e6",
			"decimal": "&#127473;&#127462;"
		},
		"name": "laos",
		"shortname": ":flag_la:",
		"category": "flags",
		"emoji_order": "2318",
		"shortname_alternates": [":la:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1e7": {
		"code_points": {
			"base": "1f1f1-1f1e7",
			"non_fully_qualified": "1f1f1-1f1e7",
			"decimal": "&#127473;&#127463;"
		},
		"name": "lebanon",
		"shortname": ":flag_lb:",
		"category": "flags",
		"emoji_order": "2319",
		"shortname_alternates": [":lb:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1e8": {
		"code_points": {
			"base": "1f1f1-1f1e8",
			"non_fully_qualified": "1f1f1-1f1e8",
			"decimal": "&#127473;&#127464;"
		},
		"name": "saint lucia",
		"shortname": ":flag_lc:",
		"category": "flags",
		"emoji_order": "2320",
		"shortname_alternates": [":lc:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1ee": {
		"code_points": {
			"base": "1f1f1-1f1ee",
			"non_fully_qualified": "1f1f1-1f1ee",
			"decimal": "&#127473;&#127470;"
		},
		"name": "liechtenstein",
		"shortname": ":flag_li:",
		"category": "flags",
		"emoji_order": "2321",
		"shortname_alternates": [":li:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1f0": {
		"code_points": {
			"base": "1f1f1-1f1f0",
			"non_fully_qualified": "1f1f1-1f1f0",
			"decimal": "&#127473;&#127472;"
		},
		"name": "sri lanka",
		"shortname": ":flag_lk:",
		"category": "flags",
		"emoji_order": "2322",
		"shortname_alternates": [":lk:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1f7": {
		"code_points": {
			"base": "1f1f1-1f1f7",
			"non_fully_qualified": "1f1f1-1f1f7",
			"decimal": "&#127473;&#127479;"
		},
		"name": "liberia",
		"shortname": ":flag_lr:",
		"category": "flags",
		"emoji_order": "2323",
		"shortname_alternates": [":lr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1f8": {
		"code_points": {
			"base": "1f1f1-1f1f8",
			"non_fully_qualified": "1f1f1-1f1f8",
			"decimal": "&#127473;&#127480;"
		},
		"name": "lesotho",
		"shortname": ":flag_ls:",
		"category": "flags",
		"emoji_order": "2324",
		"shortname_alternates": [":ls:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1f9": {
		"code_points": {
			"base": "1f1f1-1f1f9",
			"non_fully_qualified": "1f1f1-1f1f9",
			"decimal": "&#127473;&#127481;"
		},
		"name": "lithuania",
		"shortname": ":flag_lt:",
		"category": "flags",
		"emoji_order": "2325",
		"shortname_alternates": [":lt:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1fa": {
		"code_points": {
			"base": "1f1f1-1f1fa",
			"non_fully_qualified": "1f1f1-1f1fa",
			"decimal": "&#127473;&#127482;"
		},
		"name": "luxembourg",
		"shortname": ":flag_lu:",
		"category": "flags",
		"emoji_order": "2326",
		"shortname_alternates": [":lu:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1fb": {
		"code_points": {
			"base": "1f1f1-1f1fb",
			"non_fully_qualified": "1f1f1-1f1fb",
			"decimal": "&#127473;&#127483;"
		},
		"name": "latvia",
		"shortname": ":flag_lv:",
		"category": "flags",
		"emoji_order": "2327",
		"shortname_alternates": [":lv:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f1-1f1fe": {
		"code_points": {
			"base": "1f1f1-1f1fe",
			"non_fully_qualified": "1f1f1-1f1fe",
			"decimal": "&#127473;&#127486;"
		},
		"name": "libya",
		"shortname": ":flag_ly:",
		"category": "flags",
		"emoji_order": "2328",
		"shortname_alternates": [":ly:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1e6": {
		"code_points": {
			"base": "1f1f2-1f1e6",
			"non_fully_qualified": "1f1f2-1f1e6",
			"decimal": "&#127474;&#127462;"
		},
		"name": "morocco",
		"shortname": ":flag_ma:",
		"category": "flags",
		"emoji_order": "2329",
		"shortname_alternates": [":ma:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1e8": {
		"code_points": {
			"base": "1f1f2-1f1e8",
			"non_fully_qualified": "1f1f2-1f1e8",
			"decimal": "&#127474;&#127464;"
		},
		"name": "monaco",
		"shortname": ":flag_mc:",
		"category": "flags",
		"emoji_order": "2330",
		"shortname_alternates": [":mc:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1e9": {
		"code_points": {
			"base": "1f1f2-1f1e9",
			"non_fully_qualified": "1f1f2-1f1e9",
			"decimal": "&#127474;&#127465;"
		},
		"name": "moldova",
		"shortname": ":flag_md:",
		"category": "flags",
		"emoji_order": "2331",
		"shortname_alternates": [":md:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1ea": {
		"code_points": {
			"base": "1f1f2-1f1ea",
			"non_fully_qualified": "1f1f2-1f1ea",
			"decimal": "&#127474;&#127466;"
		},
		"name": "montenegro",
		"shortname": ":flag_me:",
		"category": "flags",
		"emoji_order": "2332",
		"shortname_alternates": [":me:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1eb": {
		"code_points": {
			"base": "1f1f2-1f1eb",
			"non_fully_qualified": "1f1f2-1f1eb",
			"decimal": "&#127474;&#127467;"
		},
		"name": "saint martin",
		"shortname": ":flag_mf:",
		"category": "flags",
		"emoji_order": "2333",
		"shortname_alternates": [":mf:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1ec": {
		"code_points": {
			"base": "1f1f2-1f1ec",
			"non_fully_qualified": "1f1f2-1f1ec",
			"decimal": "&#127474;&#127468;"
		},
		"name": "madagascar",
		"shortname": ":flag_mg:",
		"category": "flags",
		"emoji_order": "2334",
		"shortname_alternates": [":mg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1ed": {
		"code_points": {
			"base": "1f1f2-1f1ed",
			"non_fully_qualified": "1f1f2-1f1ed",
			"decimal": "&#127474;&#127469;"
		},
		"name": "the marshall islands",
		"shortname": ":flag_mh:",
		"category": "flags",
		"emoji_order": "2335",
		"shortname_alternates": [":mh:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f0": {
		"code_points": {
			"base": "1f1f2-1f1f0",
			"non_fully_qualified": "1f1f2-1f1f0",
			"decimal": "&#127474;&#127472;"
		},
		"name": "macedonia",
		"shortname": ":flag_mk:",
		"category": "flags",
		"emoji_order": "2336",
		"shortname_alternates": [":mk:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f1": {
		"code_points": {
			"base": "1f1f2-1f1f1",
			"non_fully_qualified": "1f1f2-1f1f1",
			"decimal": "&#127474;&#127473;"
		},
		"name": "mali",
		"shortname": ":flag_ml:",
		"category": "flags",
		"emoji_order": "2337",
		"shortname_alternates": [":ml:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f2": {
		"code_points": {
			"base": "1f1f2-1f1f2",
			"non_fully_qualified": "1f1f2-1f1f2",
			"decimal": "&#127474;&#127474;"
		},
		"name": "myanmar",
		"shortname": ":flag_mm:",
		"category": "flags",
		"emoji_order": "2338",
		"shortname_alternates": [":mm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f3": {
		"code_points": {
			"base": "1f1f2-1f1f3",
			"non_fully_qualified": "1f1f2-1f1f3",
			"decimal": "&#127474;&#127475;"
		},
		"name": "mongolia",
		"shortname": ":flag_mn:",
		"category": "flags",
		"emoji_order": "2339",
		"shortname_alternates": [":mn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f4": {
		"code_points": {
			"base": "1f1f2-1f1f4",
			"non_fully_qualified": "1f1f2-1f1f4",
			"decimal": "&#127474;&#127476;"
		},
		"name": "macau",
		"shortname": ":flag_mo:",
		"category": "flags",
		"emoji_order": "2340",
		"shortname_alternates": [":mo:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f5": {
		"code_points": {
			"base": "1f1f2-1f1f5",
			"non_fully_qualified": "1f1f2-1f1f5",
			"decimal": "&#127474;&#127477;"
		},
		"name": "northern mariana islands",
		"shortname": ":flag_mp:",
		"category": "flags",
		"emoji_order": "2341",
		"shortname_alternates": [":mp:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f6": {
		"code_points": {
			"base": "1f1f2-1f1f6",
			"non_fully_qualified": "1f1f2-1f1f6",
			"decimal": "&#127474;&#127478;"
		},
		"name": "martinique",
		"shortname": ":flag_mq:",
		"category": "flags",
		"emoji_order": "2342",
		"shortname_alternates": [":mq:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f7": {
		"code_points": {
			"base": "1f1f2-1f1f7",
			"non_fully_qualified": "1f1f2-1f1f7",
			"decimal": "&#127474;&#127479;"
		},
		"name": "mauritania",
		"shortname": ":flag_mr:",
		"category": "flags",
		"emoji_order": "2343",
		"shortname_alternates": [":mr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f8": {
		"code_points": {
			"base": "1f1f2-1f1f8",
			"non_fully_qualified": "1f1f2-1f1f8",
			"decimal": "&#127474;&#127480;"
		},
		"name": "montserrat",
		"shortname": ":flag_ms:",
		"category": "flags",
		"emoji_order": "2344",
		"shortname_alternates": [":ms:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1f9": {
		"code_points": {
			"base": "1f1f2-1f1f9",
			"non_fully_qualified": "1f1f2-1f1f9",
			"decimal": "&#127474;&#127481;"
		},
		"name": "malta",
		"shortname": ":flag_mt:",
		"category": "flags",
		"emoji_order": "2345",
		"shortname_alternates": [":mt:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1fa": {
		"code_points": {
			"base": "1f1f2-1f1fa",
			"non_fully_qualified": "1f1f2-1f1fa",
			"decimal": "&#127474;&#127482;"
		},
		"name": "mauritius",
		"shortname": ":flag_mu:",
		"category": "flags",
		"emoji_order": "2346",
		"shortname_alternates": [":mu:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1fb": {
		"code_points": {
			"base": "1f1f2-1f1fb",
			"non_fully_qualified": "1f1f2-1f1fb",
			"decimal": "&#127474;&#127483;"
		},
		"name": "maldives",
		"shortname": ":flag_mv:",
		"category": "flags",
		"emoji_order": "2347",
		"shortname_alternates": [":mv:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1fc": {
		"code_points": {
			"base": "1f1f2-1f1fc",
			"non_fully_qualified": "1f1f2-1f1fc",
			"decimal": "&#127474;&#127484;"
		},
		"name": "malawi",
		"shortname": ":flag_mw:",
		"category": "flags",
		"emoji_order": "2348",
		"shortname_alternates": [":mw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1fd": {
		"code_points": {
			"base": "1f1f2-1f1fd",
			"non_fully_qualified": "1f1f2-1f1fd",
			"decimal": "&#127474;&#127485;"
		},
		"name": "mexico",
		"shortname": ":flag_mx:",
		"category": "flags",
		"emoji_order": "2349",
		"shortname_alternates": [":mx:"],
		"ascii": [],
		"keywords": ["country", "mexican", "flag"]
	},
	"1f1f2-1f1fe": {
		"code_points": {
			"base": "1f1f2-1f1fe",
			"non_fully_qualified": "1f1f2-1f1fe",
			"decimal": "&#127474;&#127486;"
		},
		"name": "malaysia",
		"shortname": ":flag_my:",
		"category": "flags",
		"emoji_order": "2350",
		"shortname_alternates": [":my:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f2-1f1ff": {
		"code_points": {
			"base": "1f1f2-1f1ff",
			"non_fully_qualified": "1f1f2-1f1ff",
			"decimal": "&#127474;&#127487;"
		},
		"name": "mozambique",
		"shortname": ":flag_mz:",
		"category": "flags",
		"emoji_order": "2351",
		"shortname_alternates": [":mz:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1e6": {
		"code_points": {
			"base": "1f1f3-1f1e6",
			"non_fully_qualified": "1f1f3-1f1e6",
			"decimal": "&#127475;&#127462;"
		},
		"name": "namibia",
		"shortname": ":flag_na:",
		"category": "flags",
		"emoji_order": "2352",
		"shortname_alternates": [":na:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1e8": {
		"code_points": {
			"base": "1f1f3-1f1e8",
			"non_fully_qualified": "1f1f3-1f1e8",
			"decimal": "&#127475;&#127464;"
		},
		"name": "new caledonia",
		"shortname": ":flag_nc:",
		"category": "flags",
		"emoji_order": "2353",
		"shortname_alternates": [":nc:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1ea": {
		"code_points": {
			"base": "1f1f3-1f1ea",
			"non_fully_qualified": "1f1f3-1f1ea",
			"decimal": "&#127475;&#127466;"
		},
		"name": "niger",
		"shortname": ":flag_ne:",
		"category": "flags",
		"emoji_order": "2354",
		"shortname_alternates": [":ne:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1eb": {
		"code_points": {
			"base": "1f1f3-1f1eb",
			"non_fully_qualified": "1f1f3-1f1eb",
			"decimal": "&#127475;&#127467;"
		},
		"name": "norfolk island",
		"shortname": ":flag_nf:",
		"category": "flags",
		"emoji_order": "2355",
		"shortname_alternates": [":nf:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1ec": {
		"code_points": {
			"base": "1f1f3-1f1ec",
			"non_fully_qualified": "1f1f3-1f1ec",
			"decimal": "&#127475;&#127468;"
		},
		"name": "nigeria",
		"shortname": ":flag_ng:",
		"category": "flags",
		"emoji_order": "2356",
		"shortname_alternates": [":nigeria:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1ee": {
		"code_points": {
			"base": "1f1f3-1f1ee",
			"non_fully_qualified": "1f1f3-1f1ee",
			"decimal": "&#127475;&#127470;"
		},
		"name": "nicaragua",
		"shortname": ":flag_ni:",
		"category": "flags",
		"emoji_order": "2357",
		"shortname_alternates": [":ni:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1f1": {
		"code_points": {
			"base": "1f1f3-1f1f1",
			"non_fully_qualified": "1f1f3-1f1f1",
			"decimal": "&#127475;&#127473;"
		},
		"name": "the netherlands",
		"shortname": ":flag_nl:",
		"category": "flags",
		"emoji_order": "2358",
		"shortname_alternates": [":nl:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1f4": {
		"code_points": {
			"base": "1f1f3-1f1f4",
			"non_fully_qualified": "1f1f3-1f1f4",
			"decimal": "&#127475;&#127476;"
		},
		"name": "norway",
		"shortname": ":flag_no:",
		"category": "flags",
		"emoji_order": "2359",
		"shortname_alternates": [":no:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1f5": {
		"code_points": {
			"base": "1f1f3-1f1f5",
			"non_fully_qualified": "1f1f3-1f1f5",
			"decimal": "&#127475;&#127477;"
		},
		"name": "nepal",
		"shortname": ":flag_np:",
		"category": "flags",
		"emoji_order": "2360",
		"shortname_alternates": [":np:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1f7": {
		"code_points": {
			"base": "1f1f3-1f1f7",
			"non_fully_qualified": "1f1f3-1f1f7",
			"decimal": "&#127475;&#127479;"
		},
		"name": "nauru",
		"shortname": ":flag_nr:",
		"category": "flags",
		"emoji_order": "2361",
		"shortname_alternates": [":nr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1fa": {
		"code_points": {
			"base": "1f1f3-1f1fa",
			"non_fully_qualified": "1f1f3-1f1fa",
			"decimal": "&#127475;&#127482;"
		},
		"name": "niue",
		"shortname": ":flag_nu:",
		"category": "flags",
		"emoji_order": "2362",
		"shortname_alternates": [":nu:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f3-1f1ff": {
		"code_points": {
			"base": "1f1f3-1f1ff",
			"non_fully_qualified": "1f1f3-1f1ff",
			"decimal": "&#127475;&#127487;"
		},
		"name": "new zealand",
		"shortname": ":flag_nz:",
		"category": "flags",
		"emoji_order": "2363",
		"shortname_alternates": [":nz:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f4-1f1f2": {
		"code_points": {
			"base": "1f1f4-1f1f2",
			"non_fully_qualified": "1f1f4-1f1f2",
			"decimal": "&#127476;&#127474;"
		},
		"name": "oman",
		"shortname": ":flag_om:",
		"category": "flags",
		"emoji_order": "2364",
		"shortname_alternates": [":om:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1e6": {
		"code_points": {
			"base": "1f1f5-1f1e6",
			"non_fully_qualified": "1f1f5-1f1e6",
			"decimal": "&#127477;&#127462;"
		},
		"name": "panama",
		"shortname": ":flag_pa:",
		"category": "flags",
		"emoji_order": "2365",
		"shortname_alternates": [":pa:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1ea": {
		"code_points": {
			"base": "1f1f5-1f1ea",
			"non_fully_qualified": "1f1f5-1f1ea",
			"decimal": "&#127477;&#127466;"
		},
		"name": "peru",
		"shortname": ":flag_pe:",
		"category": "flags",
		"emoji_order": "2366",
		"shortname_alternates": [":pe:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1eb": {
		"code_points": {
			"base": "1f1f5-1f1eb",
			"non_fully_qualified": "1f1f5-1f1eb",
			"decimal": "&#127477;&#127467;"
		},
		"name": "french polynesia",
		"shortname": ":flag_pf:",
		"category": "flags",
		"emoji_order": "2367",
		"shortname_alternates": [":pf:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1ec": {
		"code_points": {
			"base": "1f1f5-1f1ec",
			"non_fully_qualified": "1f1f5-1f1ec",
			"decimal": "&#127477;&#127468;"
		},
		"name": "papua new guinea",
		"shortname": ":flag_pg:",
		"category": "flags",
		"emoji_order": "2368",
		"shortname_alternates": [":pg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1ed": {
		"code_points": {
			"base": "1f1f5-1f1ed",
			"non_fully_qualified": "1f1f5-1f1ed",
			"decimal": "&#127477;&#127469;"
		},
		"name": "the philippines",
		"shortname": ":flag_ph:",
		"category": "flags",
		"emoji_order": "2369",
		"shortname_alternates": [":ph:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1f0": {
		"code_points": {
			"base": "1f1f5-1f1f0",
			"non_fully_qualified": "1f1f5-1f1f0",
			"decimal": "&#127477;&#127472;"
		},
		"name": "pakistan",
		"shortname": ":flag_pk:",
		"category": "flags",
		"emoji_order": "2370",
		"shortname_alternates": [":pk:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1f1": {
		"code_points": {
			"base": "1f1f5-1f1f1",
			"non_fully_qualified": "1f1f5-1f1f1",
			"decimal": "&#127477;&#127473;"
		},
		"name": "poland",
		"shortname": ":flag_pl:",
		"category": "flags",
		"emoji_order": "2371",
		"shortname_alternates": [":pl:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1f2": {
		"code_points": {
			"base": "1f1f5-1f1f2",
			"non_fully_qualified": "1f1f5-1f1f2",
			"decimal": "&#127477;&#127474;"
		},
		"name": "saint pierre and miquelon",
		"shortname": ":flag_pm:",
		"category": "flags",
		"emoji_order": "2372",
		"shortname_alternates": [":pm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1f3": {
		"code_points": {
			"base": "1f1f5-1f1f3",
			"non_fully_qualified": "1f1f5-1f1f3",
			"decimal": "&#127477;&#127475;"
		},
		"name": "pitcairn",
		"shortname": ":flag_pn:",
		"category": "flags",
		"emoji_order": "2373",
		"shortname_alternates": [":pn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1f7": {
		"code_points": {
			"base": "1f1f5-1f1f7",
			"non_fully_qualified": "1f1f5-1f1f7",
			"decimal": "&#127477;&#127479;"
		},
		"name": "puerto rico",
		"shortname": ":flag_pr:",
		"category": "flags",
		"emoji_order": "2374",
		"shortname_alternates": [":pr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1f8": {
		"code_points": {
			"base": "1f1f5-1f1f8",
			"non_fully_qualified": "1f1f5-1f1f8",
			"decimal": "&#127477;&#127480;"
		},
		"name": "palestinian authority",
		"shortname": ":flag_ps:",
		"category": "flags",
		"emoji_order": "2375",
		"shortname_alternates": [":ps:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1f9": {
		"code_points": {
			"base": "1f1f5-1f1f9",
			"non_fully_qualified": "1f1f5-1f1f9",
			"decimal": "&#127477;&#127481;"
		},
		"name": "portugal",
		"shortname": ":flag_pt:",
		"category": "flags",
		"emoji_order": "2376",
		"shortname_alternates": [":pt:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1fc": {
		"code_points": {
			"base": "1f1f5-1f1fc",
			"non_fully_qualified": "1f1f5-1f1fc",
			"decimal": "&#127477;&#127484;"
		},
		"name": "palau",
		"shortname": ":flag_pw:",
		"category": "flags",
		"emoji_order": "2377",
		"shortname_alternates": [":pw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f5-1f1fe": {
		"code_points": {
			"base": "1f1f5-1f1fe",
			"non_fully_qualified": "1f1f5-1f1fe",
			"decimal": "&#127477;&#127486;"
		},
		"name": "paraguay",
		"shortname": ":flag_py:",
		"category": "flags",
		"emoji_order": "2378",
		"shortname_alternates": [":py:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f6-1f1e6": {
		"code_points": {
			"base": "1f1f6-1f1e6",
			"non_fully_qualified": "1f1f6-1f1e6",
			"decimal": "&#127478;&#127462;"
		},
		"name": "qatar",
		"shortname": ":flag_qa:",
		"category": "flags",
		"emoji_order": "2379",
		"shortname_alternates": [":qa:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f7-1f1ea": {
		"code_points": {
			"base": "1f1f7-1f1ea",
			"non_fully_qualified": "1f1f7-1f1ea",
			"decimal": "&#127479;&#127466;"
		},
		"name": "r\u00e9union",
		"shortname": ":flag_re:",
		"category": "flags",
		"emoji_order": "2380",
		"shortname_alternates": [":re:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f7-1f1f4": {
		"code_points": {
			"base": "1f1f7-1f1f4",
			"non_fully_qualified": "1f1f7-1f1f4",
			"decimal": "&#127479;&#127476;"
		},
		"name": "romania",
		"shortname": ":flag_ro:",
		"category": "flags",
		"emoji_order": "2381",
		"shortname_alternates": [":ro:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f7-1f1f8": {
		"code_points": {
			"base": "1f1f7-1f1f8",
			"non_fully_qualified": "1f1f7-1f1f8",
			"decimal": "&#127479;&#127480;"
		},
		"name": "serbia",
		"shortname": ":flag_rs:",
		"category": "flags",
		"emoji_order": "2382",
		"shortname_alternates": [":rs:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f7-1f1fa": {
		"code_points": {
			"base": "1f1f7-1f1fa",
			"non_fully_qualified": "1f1f7-1f1fa",
			"decimal": "&#127479;&#127482;"
		},
		"name": "russia",
		"shortname": ":flag_ru:",
		"category": "flags",
		"emoji_order": "2383",
		"shortname_alternates": [":ru:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f7-1f1fc": {
		"code_points": {
			"base": "1f1f7-1f1fc",
			"non_fully_qualified": "1f1f7-1f1fc",
			"decimal": "&#127479;&#127484;"
		},
		"name": "rwanda",
		"shortname": ":flag_rw:",
		"category": "flags",
		"emoji_order": "2384",
		"shortname_alternates": [":rw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1e6": {
		"code_points": {
			"base": "1f1f8-1f1e6",
			"non_fully_qualified": "1f1f8-1f1e6",
			"decimal": "&#127480;&#127462;"
		},
		"name": "saudi arabia",
		"shortname": ":flag_sa:",
		"category": "flags",
		"emoji_order": "2385",
		"shortname_alternates": [":saudiarabia:", ":saudi:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1e7": {
		"code_points": {
			"base": "1f1f8-1f1e7",
			"non_fully_qualified": "1f1f8-1f1e7",
			"decimal": "&#127480;&#127463;"
		},
		"name": "the solomon islands",
		"shortname": ":flag_sb:",
		"category": "flags",
		"emoji_order": "2386",
		"shortname_alternates": [":sb:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1e8": {
		"code_points": {
			"base": "1f1f8-1f1e8",
			"non_fully_qualified": "1f1f8-1f1e8",
			"decimal": "&#127480;&#127464;"
		},
		"name": "the seychelles",
		"shortname": ":flag_sc:",
		"category": "flags",
		"emoji_order": "2387",
		"shortname_alternates": [":sc:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1e9": {
		"code_points": {
			"base": "1f1f8-1f1e9",
			"non_fully_qualified": "1f1f8-1f1e9",
			"decimal": "&#127480;&#127465;"
		},
		"name": "sudan",
		"shortname": ":flag_sd:",
		"category": "flags",
		"emoji_order": "2388",
		"shortname_alternates": [":sd:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1ea": {
		"code_points": {
			"base": "1f1f8-1f1ea",
			"non_fully_qualified": "1f1f8-1f1ea",
			"decimal": "&#127480;&#127466;"
		},
		"name": "sweden",
		"shortname": ":flag_se:",
		"category": "flags",
		"emoji_order": "2389",
		"shortname_alternates": [":se:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1ec": {
		"code_points": {
			"base": "1f1f8-1f1ec",
			"non_fully_qualified": "1f1f8-1f1ec",
			"decimal": "&#127480;&#127468;"
		},
		"name": "singapore",
		"shortname": ":flag_sg:",
		"category": "flags",
		"emoji_order": "2390",
		"shortname_alternates": [":sg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1ed": {
		"code_points": {
			"base": "1f1f8-1f1ed",
			"non_fully_qualified": "1f1f8-1f1ed",
			"decimal": "&#127480;&#127469;"
		},
		"name": "saint helena",
		"shortname": ":flag_sh:",
		"category": "flags",
		"emoji_order": "2391",
		"shortname_alternates": [":sh:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1ee": {
		"code_points": {
			"base": "1f1f8-1f1ee",
			"non_fully_qualified": "1f1f8-1f1ee",
			"decimal": "&#127480;&#127470;"
		},
		"name": "slovenia",
		"shortname": ":flag_si:",
		"category": "flags",
		"emoji_order": "2392",
		"shortname_alternates": [":si:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1ef": {
		"code_points": {
			"base": "1f1f8-1f1ef",
			"non_fully_qualified": "1f1f8-1f1ef",
			"decimal": "&#127480;&#127471;"
		},
		"name": "svalbard and jan mayen",
		"shortname": ":flag_sj:",
		"category": "flags",
		"emoji_order": "2393",
		"shortname_alternates": [":sj:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1f0": {
		"code_points": {
			"base": "1f1f8-1f1f0",
			"non_fully_qualified": "1f1f8-1f1f0",
			"decimal": "&#127480;&#127472;"
		},
		"name": "slovakia",
		"shortname": ":flag_sk:",
		"category": "flags",
		"emoji_order": "2394",
		"shortname_alternates": [":sk:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1f1": {
		"code_points": {
			"base": "1f1f8-1f1f1",
			"non_fully_qualified": "1f1f8-1f1f1",
			"decimal": "&#127480;&#127473;"
		},
		"name": "sierra leone",
		"shortname": ":flag_sl:",
		"category": "flags",
		"emoji_order": "2395",
		"shortname_alternates": [":sl:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1f2": {
		"code_points": {
			"base": "1f1f8-1f1f2",
			"non_fully_qualified": "1f1f8-1f1f2",
			"decimal": "&#127480;&#127474;"
		},
		"name": "san marino",
		"shortname": ":flag_sm:",
		"category": "flags",
		"emoji_order": "2396",
		"shortname_alternates": [":sm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1f3": {
		"code_points": {
			"base": "1f1f8-1f1f3",
			"non_fully_qualified": "1f1f8-1f1f3",
			"decimal": "&#127480;&#127475;"
		},
		"name": "senegal",
		"shortname": ":flag_sn:",
		"category": "flags",
		"emoji_order": "2397",
		"shortname_alternates": [":sn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1f4": {
		"code_points": {
			"base": "1f1f8-1f1f4",
			"non_fully_qualified": "1f1f8-1f1f4",
			"decimal": "&#127480;&#127476;"
		},
		"name": "somalia",
		"shortname": ":flag_so:",
		"category": "flags",
		"emoji_order": "2398",
		"shortname_alternates": [":so:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1f7": {
		"code_points": {
			"base": "1f1f8-1f1f7",
			"non_fully_qualified": "1f1f8-1f1f7",
			"decimal": "&#127480;&#127479;"
		},
		"name": "suriname",
		"shortname": ":flag_sr:",
		"category": "flags",
		"emoji_order": "2399",
		"shortname_alternates": [":sr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1f8": {
		"code_points": {
			"base": "1f1f8-1f1f8",
			"non_fully_qualified": "1f1f8-1f1f8",
			"decimal": "&#127480;&#127480;"
		},
		"name": "south sudan",
		"shortname": ":flag_ss:",
		"category": "flags",
		"emoji_order": "2400",
		"shortname_alternates": [":ss:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1f9": {
		"code_points": {
			"base": "1f1f8-1f1f9",
			"non_fully_qualified": "1f1f8-1f1f9",
			"decimal": "&#127480;&#127481;"
		},
		"name": "s\u00e3o tom\u00e9 and pr\u00edncipe",
		"shortname": ":flag_st:",
		"category": "flags",
		"emoji_order": "2401",
		"shortname_alternates": [":st:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1fb": {
		"code_points": {
			"base": "1f1f8-1f1fb",
			"non_fully_qualified": "1f1f8-1f1fb",
			"decimal": "&#127480;&#127483;"
		},
		"name": "el salvador",
		"shortname": ":flag_sv:",
		"category": "flags",
		"emoji_order": "2402",
		"shortname_alternates": [":sv:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1fd": {
		"code_points": {
			"base": "1f1f8-1f1fd",
			"non_fully_qualified": "1f1f8-1f1fd",
			"decimal": "&#127480;&#127485;"
		},
		"name": "sint maarten",
		"shortname": ":flag_sx:",
		"category": "flags",
		"emoji_order": "2403",
		"shortname_alternates": [":sx:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1fe": {
		"code_points": {
			"base": "1f1f8-1f1fe",
			"non_fully_qualified": "1f1f8-1f1fe",
			"decimal": "&#127480;&#127486;"
		},
		"name": "syria",
		"shortname": ":flag_sy:",
		"category": "flags",
		"emoji_order": "2404",
		"shortname_alternates": [":sy:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f8-1f1ff": {
		"code_points": {
			"base": "1f1f8-1f1ff",
			"non_fully_qualified": "1f1f8-1f1ff",
			"decimal": "&#127480;&#127487;"
		},
		"name": "swaziland",
		"shortname": ":flag_sz:",
		"category": "flags",
		"emoji_order": "2405",
		"shortname_alternates": [":sz:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1e6": {
		"code_points": {
			"base": "1f1f9-1f1e6",
			"non_fully_qualified": "1f1f9-1f1e6",
			"decimal": "&#127481;&#127462;"
		},
		"name": "tristan da cunha",
		"shortname": ":flag_ta:",
		"category": "flags",
		"emoji_order": "2406",
		"shortname_alternates": [":ta:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1e8": {
		"code_points": {
			"base": "1f1f9-1f1e8",
			"non_fully_qualified": "1f1f9-1f1e8",
			"decimal": "&#127481;&#127464;"
		},
		"name": "turks and caicos islands",
		"shortname": ":flag_tc:",
		"category": "flags",
		"emoji_order": "2407",
		"shortname_alternates": [":tc:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1e9": {
		"code_points": {
			"base": "1f1f9-1f1e9",
			"non_fully_qualified": "1f1f9-1f1e9",
			"decimal": "&#127481;&#127465;"
		},
		"name": "chad",
		"shortname": ":flag_td:",
		"category": "flags",
		"emoji_order": "2408",
		"shortname_alternates": [":td:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1eb": {
		"code_points": {
			"base": "1f1f9-1f1eb",
			"non_fully_qualified": "1f1f9-1f1eb",
			"decimal": "&#127481;&#127467;"
		},
		"name": "french southern territories",
		"shortname": ":flag_tf:",
		"category": "flags",
		"emoji_order": "2409",
		"shortname_alternates": [":tf:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1ec": {
		"code_points": {
			"base": "1f1f9-1f1ec",
			"non_fully_qualified": "1f1f9-1f1ec",
			"decimal": "&#127481;&#127468;"
		},
		"name": "togo",
		"shortname": ":flag_tg:",
		"category": "flags",
		"emoji_order": "2410",
		"shortname_alternates": [":tg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1ed": {
		"code_points": {
			"base": "1f1f9-1f1ed",
			"non_fully_qualified": "1f1f9-1f1ed",
			"decimal": "&#127481;&#127469;"
		},
		"name": "thailand",
		"shortname": ":flag_th:",
		"category": "flags",
		"emoji_order": "2411",
		"shortname_alternates": [":th:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1ef": {
		"code_points": {
			"base": "1f1f9-1f1ef",
			"non_fully_qualified": "1f1f9-1f1ef",
			"decimal": "&#127481;&#127471;"
		},
		"name": "tajikistan",
		"shortname": ":flag_tj:",
		"category": "flags",
		"emoji_order": "2412",
		"shortname_alternates": [":tj:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1f0": {
		"code_points": {
			"base": "1f1f9-1f1f0",
			"non_fully_qualified": "1f1f9-1f1f0",
			"decimal": "&#127481;&#127472;"
		},
		"name": "tokelau",
		"shortname": ":flag_tk:",
		"category": "flags",
		"emoji_order": "2413",
		"shortname_alternates": [":tk:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1f1": {
		"code_points": {
			"base": "1f1f9-1f1f1",
			"non_fully_qualified": "1f1f9-1f1f1",
			"decimal": "&#127481;&#127473;"
		},
		"name": "timor-leste",
		"shortname": ":flag_tl:",
		"category": "flags",
		"emoji_order": "2414",
		"shortname_alternates": [":tl:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1f2": {
		"code_points": {
			"base": "1f1f9-1f1f2",
			"non_fully_qualified": "1f1f9-1f1f2",
			"decimal": "&#127481;&#127474;"
		},
		"name": "turkmenistan",
		"shortname": ":flag_tm:",
		"category": "flags",
		"emoji_order": "2415",
		"shortname_alternates": [":turkmenistan:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1f3": {
		"code_points": {
			"base": "1f1f9-1f1f3",
			"non_fully_qualified": "1f1f9-1f1f3",
			"decimal": "&#127481;&#127475;"
		},
		"name": "tunisia",
		"shortname": ":flag_tn:",
		"category": "flags",
		"emoji_order": "2416",
		"shortname_alternates": [":tn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1f4": {
		"code_points": {
			"base": "1f1f9-1f1f4",
			"non_fully_qualified": "1f1f9-1f1f4",
			"decimal": "&#127481;&#127476;"
		},
		"name": "tonga",
		"shortname": ":flag_to:",
		"category": "flags",
		"emoji_order": "2417",
		"shortname_alternates": [":to:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1f7": {
		"code_points": {
			"base": "1f1f9-1f1f7",
			"non_fully_qualified": "1f1f9-1f1f7",
			"decimal": "&#127481;&#127479;"
		},
		"name": "turkey",
		"shortname": ":flag_tr:",
		"category": "flags",
		"emoji_order": "2418",
		"shortname_alternates": [":tr:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1f9": {
		"code_points": {
			"base": "1f1f9-1f1f9",
			"non_fully_qualified": "1f1f9-1f1f9",
			"decimal": "&#127481;&#127481;"
		},
		"name": "trinidad and tobago",
		"shortname": ":flag_tt:",
		"category": "flags",
		"emoji_order": "2419",
		"shortname_alternates": [":tt:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1fb": {
		"code_points": {
			"base": "1f1f9-1f1fb",
			"non_fully_qualified": "1f1f9-1f1fb",
			"decimal": "&#127481;&#127483;"
		},
		"name": "tuvalu",
		"shortname": ":flag_tv:",
		"category": "flags",
		"emoji_order": "2420",
		"shortname_alternates": [":tuvalu:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1fc": {
		"code_points": {
			"base": "1f1f9-1f1fc",
			"non_fully_qualified": "1f1f9-1f1fc",
			"decimal": "&#127481;&#127484;"
		},
		"name": "the republic of china",
		"shortname": ":flag_tw:",
		"category": "flags",
		"emoji_order": "2421",
		"shortname_alternates": [":tw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1f9-1f1ff": {
		"code_points": {
			"base": "1f1f9-1f1ff",
			"non_fully_qualified": "1f1f9-1f1ff",
			"decimal": "&#127481;&#127487;"
		},
		"name": "tanzania",
		"shortname": ":flag_tz:",
		"category": "flags",
		"emoji_order": "2422",
		"shortname_alternates": [":tz:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fa-1f1e6": {
		"code_points": {
			"base": "1f1fa-1f1e6",
			"non_fully_qualified": "1f1fa-1f1e6",
			"decimal": "&#127482;&#127462;"
		},
		"name": "ukraine",
		"shortname": ":flag_ua:",
		"category": "flags",
		"emoji_order": "2423",
		"shortname_alternates": [":ua:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fa-1f1ec": {
		"code_points": {
			"base": "1f1fa-1f1ec",
			"non_fully_qualified": "1f1fa-1f1ec",
			"decimal": "&#127482;&#127468;"
		},
		"name": "uganda",
		"shortname": ":flag_ug:",
		"category": "flags",
		"emoji_order": "2424",
		"shortname_alternates": [":ug:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fa-1f1f2": {
		"code_points": {
			"base": "1f1fa-1f1f2",
			"non_fully_qualified": "1f1fa-1f1f2",
			"decimal": "&#127482;&#127474;"
		},
		"name": "united states minor outlying islands",
		"shortname": ":flag_um:",
		"category": "flags",
		"emoji_order": "2425",
		"shortname_alternates": [":um:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fa-1f1f8": {
		"code_points": {
			"base": "1f1fa-1f1f8",
			"non_fully_qualified": "1f1fa-1f1f8",
			"decimal": "&#127482;&#127480;"
		},
		"name": "united states",
		"shortname": ":flag_us:",
		"category": "flags",
		"emoji_order": "2427",
		"shortname_alternates": [":us:"],
		"ascii": [],
		"keywords": ["america", "country", "flag"]
	},
	"1f1fa-1f1fe": {
		"code_points": {
			"base": "1f1fa-1f1fe",
			"non_fully_qualified": "1f1fa-1f1fe",
			"decimal": "&#127482;&#127486;"
		},
		"name": "uruguay",
		"shortname": ":flag_uy:",
		"category": "flags",
		"emoji_order": "2428",
		"shortname_alternates": [":uy:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fa-1f1ff": {
		"code_points": {
			"base": "1f1fa-1f1ff",
			"non_fully_qualified": "1f1fa-1f1ff",
			"decimal": "&#127482;&#127487;"
		},
		"name": "uzbekistan",
		"shortname": ":flag_uz:",
		"category": "flags",
		"emoji_order": "2429",
		"shortname_alternates": [":uz:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fb-1f1e6": {
		"code_points": {
			"base": "1f1fb-1f1e6",
			"non_fully_qualified": "1f1fb-1f1e6",
			"decimal": "&#127483;&#127462;"
		},
		"name": "the vatican city",
		"shortname": ":flag_va:",
		"category": "flags",
		"emoji_order": "2430",
		"shortname_alternates": [":va:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fb-1f1e8": {
		"code_points": {
			"base": "1f1fb-1f1e8",
			"non_fully_qualified": "1f1fb-1f1e8",
			"decimal": "&#127483;&#127464;"
		},
		"name": "saint vincent and the grenadines",
		"shortname": ":flag_vc:",
		"category": "flags",
		"emoji_order": "2431",
		"shortname_alternates": [":vc:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fb-1f1ea": {
		"code_points": {
			"base": "1f1fb-1f1ea",
			"non_fully_qualified": "1f1fb-1f1ea",
			"decimal": "&#127483;&#127466;"
		},
		"name": "venezuela",
		"shortname": ":flag_ve:",
		"category": "flags",
		"emoji_order": "2432",
		"shortname_alternates": [":ve:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fb-1f1ec": {
		"code_points": {
			"base": "1f1fb-1f1ec",
			"non_fully_qualified": "1f1fb-1f1ec",
			"decimal": "&#127483;&#127468;"
		},
		"name": "british virgin islands",
		"shortname": ":flag_vg:",
		"category": "flags",
		"emoji_order": "2433",
		"shortname_alternates": [":vg:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fb-1f1ee": {
		"code_points": {
			"base": "1f1fb-1f1ee",
			"non_fully_qualified": "1f1fb-1f1ee",
			"decimal": "&#127483;&#127470;"
		},
		"name": "u.s. virgin islands",
		"shortname": ":flag_vi:",
		"category": "flags",
		"emoji_order": "2434",
		"shortname_alternates": [":vi:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fb-1f1f3": {
		"code_points": {
			"base": "1f1fb-1f1f3",
			"non_fully_qualified": "1f1fb-1f1f3",
			"decimal": "&#127483;&#127475;"
		},
		"name": "vietnam",
		"shortname": ":flag_vn:",
		"category": "flags",
		"emoji_order": "2435",
		"shortname_alternates": [":vn:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fb-1f1fa": {
		"code_points": {
			"base": "1f1fb-1f1fa",
			"non_fully_qualified": "1f1fb-1f1fa",
			"decimal": "&#127483;&#127482;"
		},
		"name": "vanuatu",
		"shortname": ":flag_vu:",
		"category": "flags",
		"emoji_order": "2436",
		"shortname_alternates": [":vu:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fc-1f1eb": {
		"code_points": {
			"base": "1f1fc-1f1eb",
			"non_fully_qualified": "1f1fc-1f1eb",
			"decimal": "&#127484;&#127467;"
		},
		"name": "wallis and futuna",
		"shortname": ":flag_wf:",
		"category": "flags",
		"emoji_order": "2437",
		"shortname_alternates": [":wf:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fc-1f1f8": {
		"code_points": {
			"base": "1f1fc-1f1f8",
			"non_fully_qualified": "1f1fc-1f1f8",
			"decimal": "&#127484;&#127480;"
		},
		"name": "samoa",
		"shortname": ":flag_ws:",
		"category": "flags",
		"emoji_order": "2438",
		"shortname_alternates": [":ws:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fd-1f1f0": {
		"code_points": {
			"base": "1f1fd-1f1f0",
			"non_fully_qualified": "1f1fd-1f1f0",
			"decimal": "&#127485;&#127472;"
		},
		"name": "kosovo",
		"shortname": ":flag_xk:",
		"category": "flags",
		"emoji_order": "2439",
		"shortname_alternates": [":xk:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fe-1f1ea": {
		"code_points": {
			"base": "1f1fe-1f1ea",
			"non_fully_qualified": "1f1fe-1f1ea",
			"decimal": "&#127486;&#127466;"
		},
		"name": "yemen",
		"shortname": ":flag_ye:",
		"category": "flags",
		"emoji_order": "2440",
		"shortname_alternates": [":ye:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1fe-1f1f9": {
		"code_points": {
			"base": "1f1fe-1f1f9",
			"non_fully_qualified": "1f1fe-1f1f9",
			"decimal": "&#127486;&#127481;"
		},
		"name": "mayotte",
		"shortname": ":flag_yt:",
		"category": "flags",
		"emoji_order": "2441",
		"shortname_alternates": [":yt:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ff-1f1e6": {
		"code_points": {
			"base": "1f1ff-1f1e6",
			"non_fully_qualified": "1f1ff-1f1e6",
			"decimal": "&#127487;&#127462;"
		},
		"name": "south africa",
		"shortname": ":flag_za:",
		"category": "flags",
		"emoji_order": "2442",
		"shortname_alternates": [":za:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ff-1f1f2": {
		"code_points": {
			"base": "1f1ff-1f1f2",
			"non_fully_qualified": "1f1ff-1f1f2",
			"decimal": "&#127487;&#127474;"
		},
		"name": "zambia",
		"shortname": ":flag_zm:",
		"category": "flags",
		"emoji_order": "2443",
		"shortname_alternates": [":zm:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ff-1f1fc": {
		"code_points": {
			"base": "1f1ff-1f1fc",
			"non_fully_qualified": "1f1ff-1f1fc",
			"decimal": "&#127487;&#127484;"
		},
		"name": "zimbabwe",
		"shortname": ":flag_zw:",
		"category": "flags",
		"emoji_order": "2444",
		"shortname_alternates": [":zw:"],
		"ascii": [],
		"keywords": ["country", "flag"]
	},
	"1f1ff": {
		"code_points": {
			"base": "1f1ff",
			"non_fully_qualified": "1f1ff",
			"decimal": "&#127487;"
		},
		"name": "regional indicator symbol letter z",
		"shortname": ":regional_indicator_z:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1fe": {
		"code_points": {
			"base": "1f1fe",
			"non_fully_qualified": "1f1fe",
			"decimal": "&#127486;"
		},
		"name": "regional indicator symbol letter y",
		"shortname": ":regional_indicator_y:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1fd": {
		"code_points": {
			"base": "1f1fd",
			"non_fully_qualified": "1f1fd",
			"decimal": "&#127485;"
		},
		"name": "regional indicator symbol letter x",
		"shortname": ":regional_indicator_x:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1fc": {
		"code_points": {
			"base": "1f1fc",
			"non_fully_qualified": "1f1fc",
			"decimal": "&#127484;"
		},
		"name": "regional indicator symbol letter w",
		"shortname": ":regional_indicator_w:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1fb": {
		"code_points": {
			"base": "1f1fb",
			"non_fully_qualified": "1f1fb",
			"decimal": "&#127483;"
		},
		"name": "regional indicator symbol letter v",
		"shortname": ":regional_indicator_v:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1fa": {
		"code_points": {
			"base": "1f1fa",
			"non_fully_qualified": "1f1fa",
			"decimal": "&#127482;"
		},
		"name": "regional indicator symbol letter u",
		"shortname": ":regional_indicator_u:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f9": {
		"code_points": {
			"base": "1f1f9",
			"non_fully_qualified": "1f1f9",
			"decimal": "&#127481;"
		},
		"name": "regional indicator symbol letter t",
		"shortname": ":regional_indicator_t:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f8": {
		"code_points": {
			"base": "1f1f8",
			"non_fully_qualified": "1f1f8",
			"decimal": "&#127480;"
		},
		"name": "regional indicator symbol letter s",
		"shortname": ":regional_indicator_s:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f7": {
		"code_points": {
			"base": "1f1f7",
			"non_fully_qualified": "1f1f7",
			"decimal": "&#127479;"
		},
		"name": "regional indicator symbol letter r",
		"shortname": ":regional_indicator_r:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f6": {
		"code_points": {
			"base": "1f1f6",
			"non_fully_qualified": "1f1f6",
			"decimal": "&#127478;"
		},
		"name": "regional indicator symbol letter q",
		"shortname": ":regional_indicator_q:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f5": {
		"code_points": {
			"base": "1f1f5",
			"non_fully_qualified": "1f1f5",
			"decimal": "&#127477;"
		},
		"name": "regional indicator symbol letter p",
		"shortname": ":regional_indicator_p:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f4": {
		"code_points": {
			"base": "1f1f4",
			"non_fully_qualified": "1f1f4",
			"decimal": "&#127476;"
		},
		"name": "regional indicator symbol letter o",
		"shortname": ":regional_indicator_o:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f3": {
		"code_points": {
			"base": "1f1f3",
			"non_fully_qualified": "1f1f3",
			"decimal": "&#127475;"
		},
		"name": "regional indicator symbol letter n",
		"shortname": ":regional_indicator_n:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f2": {
		"code_points": {
			"base": "1f1f2",
			"non_fully_qualified": "1f1f2",
			"decimal": "&#127474;"
		},
		"name": "regional indicator symbol letter m",
		"shortname": ":regional_indicator_m:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f1": {
		"code_points": {
			"base": "1f1f1",
			"non_fully_qualified": "1f1f1",
			"decimal": "&#127473;"
		},
		"name": "regional indicator symbol letter l",
		"shortname": ":regional_indicator_l:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f0": {
		"code_points": {
			"base": "1f1f0",
			"non_fully_qualified": "1f1f0",
			"decimal": "&#127472;"
		},
		"name": "regional indicator symbol letter k",
		"shortname": ":regional_indicator_k:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1ef": {
		"code_points": {
			"base": "1f1ef",
			"non_fully_qualified": "1f1ef",
			"decimal": "&#127471;"
		},
		"name": "regional indicator symbol letter j",
		"shortname": ":regional_indicator_j:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1ee": {
		"code_points": {
			"base": "1f1ee",
			"non_fully_qualified": "1f1ee",
			"decimal": "&#127470;"
		},
		"name": "regional indicator symbol letter i",
		"shortname": ":regional_indicator_i:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1ed": {
		"code_points": {
			"base": "1f1ed",
			"non_fully_qualified": "1f1ed",
			"decimal": "&#127469;"
		},
		"name": "regional indicator symbol letter h",
		"shortname": ":regional_indicator_h:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1ec": {
		"code_points": {
			"base": "1f1ec",
			"non_fully_qualified": "1f1ec",
			"decimal": "&#127468;"
		},
		"name": "regional indicator symbol letter g",
		"shortname": ":regional_indicator_g:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1eb": {
		"code_points": {
			"base": "1f1eb",
			"non_fully_qualified": "1f1eb",
			"decimal": "&#127467;"
		},
		"name": "regional indicator symbol letter f",
		"shortname": ":regional_indicator_f:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1ea": {
		"code_points": {
			"base": "1f1ea",
			"non_fully_qualified": "1f1ea",
			"decimal": "&#127466;"
		},
		"name": "regional indicator symbol letter e",
		"shortname": ":regional_indicator_e:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1e9": {
		"code_points": {
			"base": "1f1e9",
			"non_fully_qualified": "1f1e9",
			"decimal": "&#127465;"
		},
		"name": "regional indicator symbol letter d",
		"shortname": ":regional_indicator_d:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1e8": {
		"code_points": {
			"base": "1f1e8",
			"non_fully_qualified": "1f1e8",
			"decimal": "&#127464;"
		},
		"name": "regional indicator symbol letter c",
		"shortname": ":regional_indicator_c:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1e7": {
		"code_points": {
			"base": "1f1e7",
			"non_fully_qualified": "1f1e7",
			"decimal": "&#127463;"
		},
		"name": "regional indicator symbol letter b",
		"shortname": ":regional_indicator_b:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1e6": {
		"code_points": {
			"base": "1f1e6",
			"non_fully_qualified": "1f1e6",
			"decimal": "&#127462;"
		},
		"name": "regional indicator symbol letter a",
		"shortname": ":regional_indicator_a:",
		"category": "regional",
		"emoji_order": "12345",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f1f8-1f1fa": {
		"code_points": {
			"base": "1f1f8-1f1fa",
			"non_fully_qualified": "1f1f8-1f1fa",
			"decimal": ""
		},
		"name": "Soviet Union",
		"shortname": ":flag_su:",
		"category": "flags",
		"emoji_order": "",
		"shortname_alternates": [":su:"],
		"ascii": [],
		"keywords": ["country", "flag", "communism"]
	},
	"1f322": {
		"code_points": {
			"base": "1f322",
			"non_fully_qualified": "1f322",
			"decimal": ""
		},
		"name": "drop of blood",
		"shortname": ":blood:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f323": {
		"code_points": {
			"base": "1f323",
			"non_fully_qualified": "1f323",
			"decimal": ""
		},
		"name": "Sun symbol",
		"shortname": ":sun?symbol:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f395": {
		"code_points": {
			"base": "1f395",
			"non_fully_qualified": "1f395",
			"decimal": ""
		},
		"name": "bouquet of flowers",
		"shortname": ":flowers:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3f1": {
		"code_points": {
			"base": "1f3f1",
			"non_fully_qualified": "1f3f1",
			"decimal": ""
		},
		"name": "white pennant",
		"shortname": ":pennant_white:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3f2": {
		"code_points": {
			"base": "1f3f2",
			"non_fully_qualified": "1f3f2",
			"decimal": ""
		},
		"name": "Black pennant",
		"shortname": ":pennant_black:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f3f4-2620": {
		"code_points": {
			"base": "1f3f4-2620",
			"non_fully_qualified": "1f3f4-2620",
			"decimal": ""
		},
		"name": "Jolly Rogers flag",
		"shortname": ":jollyrogers:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":pirate_flag:"],
		"ascii": [],
		"keywords": []
	},
	"1f3f4-e0067-e0062-e0065-e006e-e0067-e007f": {
		"code_points": {
			"base": "1f3f4-e0067-e0062-e0065-e006e-e0067-e007f",
			"non_fully_qualified": "1f3f4-e0067-e0062-e0065-e006e-e0067-e007f",
			"decimal": ""
		},
		"name": "flag of England",
		"shortname": ":flag_gbeng:",
		"category": "flags",
		"emoji_order": "",
		"shortname_alternates": [":eng:"],
		"ascii": [],
		"keywords": []
	},
	"1f3f4-e0067-e0062-e006e-e0069-e0072-e007f": {
		"code_points": {
			"base": "1f3f4-e0067-e0062-e006e-e0069-e0072-e007f",
			"non_fully_qualified": "1f3f4-e0067-e0062-e006e-e0069-e0072-e007f",
			"decimal": ""
		},
		"name": "Flag of Northern Ireland",
		"shortname": ":flag_gbnir:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":nir:"],
		"ascii": [],
		"keywords": []
	},
	"1f3f4-e0067-e0062-e0073-e0063-e0074-e007f": {
		"code_points": {
			"base": "1f3f4-e0067-e0062-e0073-e0063-e0074-e007f",
			"non_fully_qualified": "1f3f4-e0067-e0062-e0073-e0063-e0074-e007f",
			"decimal": ""
		},
		"name": "Flag of Scotland",
		"shortname": ":flag_gbsct:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["Alba"]
	},
	"1f3f4-e0067-e0062-e0077-e006c-e0073-e007f": {
		"code_points": {
			"base": "1f3f4-e0067-e0062-e0077-e006c-e0073-e007f",
			"non_fully_qualified": "1f3f4-e0067-e0062-e0077-e006c-e0073-e007f",
			"decimal": ""
		},
		"name": "Flag of Wales",
		"shortname": ":flag_gbwls:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":wls:",":cym:"],
		"ascii": [],
		"keywords": ["Cymru"]
	},
	"1f468-1f469-1f466": {
		"code_points": {
			"base": "1f468-1f469-1f466",
			"non_fully_qualified": "1f468-1f469-1f466",
			"fully_qualified": "1f468-200d-1f469-200d-1f466",
			"decimal": "&#128104;&#128105;&#128102;"
		},
		"name": "family (man,woman,boy)",
		"shortname": ":family_mwb:",
		"category": "people",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["people", "family", "child", "son", "father", "mother"]
	},
	"1f540": {
		"code_points": {
			"base": "1f540",
			"non_fully_qualified": "1f540",
			"decimal": ""
		},
		"name": "Circled Cross Pommee",
		"shortname": ":pommee_circled:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f541": {
		"code_points": {
			"base": "1f541",
			"non_fully_qualified": "1f541",
			"decimal": ""
		},
		"name": "Semi-Circled Cross Pommee",
		"shortname": ":pommee_semi:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f542": {
		"code_points": {
			"base": "1f542",
			"non_fully_qualified": "1f542",
			"decimal": ""
		},
		"name": "Cross Pommee",
		"shortname": ":pommee:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f546": {
		"code_points": {
			"base": "1f546",
			"non_fully_qualified": "1f546",
			"decimal": ""
		},
		"name": "White Latin Cross",
		"shortname": ":cross_button:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f547": {
		"code_points": {
			"base": "1f547",
			"non_fully_qualified": "1f547",
			"decimal": ""
		},
		"name": "Heavy Cross",
		"shortname": ":christian_cross:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f548": {
		"code_points": {
			"base": "1f548",
			"non_fully_qualified": "1f548",
			"decimal": ""
		},
		"name": "Celtic Cross",
		"shortname": ":celtic_cross:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f568": {
		"code_points": {
			"base": "1f568",
			"non_fully_qualified": "1f568",
			"decimal": ""
		},
		"name": "right speaker",
		"shortname": ":right_speaker:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["alarm", "symbol"]
	},
	"1f569": {
		"code_points": {
			"base": "1f569",
			"non_fully_qualified": "1f569",
			"decimal": ""
		},
		"name": "right speaker with one sound wave",
		"shortname": ":stereo_sound:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["alarm", "symbol"]
	},
	"1f56a": {
		"code_points": {
			"base": "1f56a",
			"non_fully_qualified": "1f56a",
			"decimal": ""
		},
		"name": "right speaker with three sound waves",
		"shortname": ":stereo_loud:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["alarm", "symbol"]
	},
	"1f56d": {
		"code_points": {
			"base": "1f56d",
			"non_fully_qualified": "1f56d",
			"decimal": ""
		},
		"name": "Ringing Bell",
		"shortname": ":bellring:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f56e": {
		"code_points": {
			"base": "1f56e",
			"non_fully_qualified": "1f56e",
			"decimal": ""
		},
		"name": "Book",
		"shortname": ":reading:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f571": {
		"code_points": {
			"base": "1f571",
			"non_fully_qualified": "1f571",
			"decimal": ""
		},
		"name": "Black Skull and Bones",
		"shortname": ":piracy:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f572": {
		"code_points": {
			"base": "1f572",
			"non_fully_qualified": "1f572",
			"decimal": ""
		},
		"name": "No Piracy",
		"shortname": ":no_piracy:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f576-1f534-1f535": {
		"code_points": {
			"base": "1f576-1f534-1f535",
			"non_fully_qualified": "1f576-1f534-1f535",
			"decimal": ""
		},
		"name": "3D glasses",
		"shortname": ":3d:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f576-1f535-1f534": {
		"code_points": {
			"base": "1f576-1f535-1f534",
			"non_fully_qualified": "1f576-1f535-1f534",
			"decimal": ""
		},
		"name": "3D glasses alternate",
		"shortname": ":blue_red:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f57b": {
		"code_points": {
			"base": "1f57b",
			"non_fully_qualified": "1f57b",
			"decimal": ""
		},
		"name": "left phone receiver",
		"shortname": ":receiver_left:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f57c": {
		"code_points": {
			"base": "1f57c",
			"non_fully_qualified": "1f57c",
			"decimal": ""
		},
		"name": "telefax",
		"shortname": ":telefax:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f57d": {
		"code_points": {
			"base": "1f57d",
			"non_fully_qualified": "1f57d",
			"decimal": ""
		},
		"name": "right phone receiver",
		"shortname": ":receiver_right:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f582": {
		"code_points": {
			"base": "1f582",
			"non_fully_qualified": "1f582",
			"decimal": ""
		},
		"name": "Letter envelope backside",
		"shortname": ":mail_envelope:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f584": {
		"code_points": {
			"base": "1f584",
			"non_fully_qualified": "1f584",
			"decimal": ""
		},
		"name": "Electroninc mail",
		"shortname": ":e_mail:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f585": {
		"code_points": {
			"base": "1f585",
			"non_fully_qualified": "1f585",
			"decimal": ""
		},
		"name": "flying letter envelope",
		"shortname": ":sent_letter:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f588": {
		"code_points": {
			"base": "1f588",
			"non_fully_qualified": "1f588",
			"decimal": ""
		},
		"name": "Black pushpin",
		"shortname": ":push_pin:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f589": {
		"code_points": {
			"base": "1f589",
			"non_fully_qualified": "1f589",
			"decimal": ""
		},
		"name": "Pencil lower left",
		"shortname": ":pencil3:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f58e": {
		"code_points": {
			"base": "1f58e",
			"non_fully_qualified": "1f58e",
			"decimal": ""
		},
		"name": "left-handed",
		"shortname": ":leftie:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f58e-1f3fb": {
		"code_points": {
			"base": "1f58e-1f3fb",
			"non_fully_qualified": "1f58e-1f3fb",
			"decimal": ""
		},
		"name": "left-handed light skin tone",
		"shortname": ":leftie_tone1:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f58e-1f3fc": {
		"code_points": {
			"base": "1f58e-1f3fc",
			"non_fully_qualified": "1f58e-1f3fc",
			"decimal": ""
		},
		"name": "left-handed medium-light skin tone",
		"shortname": ":leftie_tone2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f58e-1f3fd": {
		"code_points": {
			"base": "1f58e-1f3fd",
			"non_fully_qualified": "1f58e-1f3fd",
			"decimal": ""
		},
		"name": "left-handed medium skin tone",
		"shortname": ":leftie_tone3:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f58e-1f3fe": {
		"code_points": {
			"base": "1f58e-1f3fe",
			"non_fully_qualified": "1f58e-1f3fe",
			"decimal": ""
		},
		"name": "left-handed medium dark skin tone",
		"shortname": ":leftie_tone4:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f58e-1f3ff": {
		"code_points": {
			"base": "1f58e-1f3ff",
			"non_fully_qualified": "1f58e-1f3ff",
			"decimal": ""
		},
		"name": "left-handed dark skin tone",
		"shortname": ":leftie_tone5:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f597": {
		"code_points": {
			"base": "1f597",
			"non_fully_qualified": "1f597",
			"decimal": ""
		},
		"name": "left hand pointing down",
		"shortname": ":leftie_down:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f597-1f3fb": {
		"code_points": {
			"base": "1f597-1f3fb",
			"non_fully_qualified": "1f597-1f3fb",
			"decimal": ""
		},
		"name": "left hand pointing down light skin tone",
		"shortname": ":leftie_down_tone1:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f597-1f3fc": {
		"code_points": {
			"base": "1f597-1f3fc",
			"non_fully_qualified": "1f597-1f3fc",
			"decimal": ""
		},
		"name": "left hand pointing down medium light skin tone",
		"shortname": ":leftie_down_tone2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f597-1f3fd": {
		"code_points": {
			"base": "1f597-1f3fd",
			"non_fully_qualified": "1f597-1f3fd",
			"decimal": ""
		},
		"name": "left hand pointing down medium skin tone",
		"shortname": ":leftie_down_tone3:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f597-1f3fe": {
		"code_points": {
			"base": "1f597-1f3fe",
			"non_fully_qualified": "1f597-1f3fe",
			"decimal": ""
		},
		"name": "left hand pointing down medium dark skin tone",
		"shortname": ":leftie_down_tone4:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f597-1f3ff": {
		"code_points": {
			"base": "1f597-1f3ff",
			"non_fully_qualified": "1f597-1f3ff",
			"decimal": ""
		},
		"name": "left hand pointing down dark skin tone",
		"shortname": ":leftie_down_tone5:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f598": {
		"code_points": {
			"base": "1f598",
			"non_fully_qualified": "1f598",
			"decimal": ""
		},
		"name": "sideways hand pointing left",
		"shortname": ":sidepointer_left:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f599": {
		"code_points": {
			"base": "1f599",
			"non_fully_qualified": "1f599",
			"decimal": ""
		},
		"name": "sideways hand pointing right",
		"shortname": ":sidepointer_right:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f59c": {
		"code_points": {
			"base": "1f59c",
			"non_fully_qualified": "1f59c",
			"decimal": ""
		},
		"name": "gloved hand pointing left",
		"shortname": ":glove_left:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f59d": {
		"code_points": {
			"base": "1f59d",
			"non_fully_qualified": "1f59d",
			"decimal": ""
		},
		"name": "gloved hand pointing right",
		"shortname": ":glove_right:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f59e": {
		"code_points": {
			"base": "1f59e",
			"non_fully_qualified": "1f59e",
			"decimal": ""
		},
		"name": "sideways hand pointing up",
		"shortname": ":sidepointer_up:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f59f": {
		"code_points": {
			"base": "1f59f",
			"non_fully_qualified": "1f59f",
			"decimal": ""
		},
		"name": "sideways hand pointing down",
		"shortname": ":sidepointer_down:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5a2": {
		"code_points": {
			"base": "1f5a2",
			"non_fully_qualified": "1f5a2",
			"decimal": ""
		},
		"name": "gloved hand pointing up",
		"shortname": ":glove_up:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5a3": {
		"code_points": {
			"base": "1f5a3",
			"non_fully_qualified": "1f5a3",
			"decimal": ""
		},
		"name": "gloved hand pointing down",
		"shortname": ":glove_down:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5a6": {
		"code_points": {
			"base": "1f5a6",
			"non_fully_qualified": "1f5a6",
			"decimal": ""
		},
		"name": "Keyboard and Mouse",
		"shortname": ":keyboard_mouse:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5a7": {
		"code_points": {
			"base": "1f5a7",
			"non_fully_qualified": "1f5a7",
			"decimal": ""
		},
		"name": "networked computers",
		"shortname": ":network:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5ae": {
		"code_points": {
			"base": "1f5ae",
			"non_fully_qualified": "1f5ae",
			"decimal": ""
		},
		"name": "keyboard with cord",
		"shortname": ":keyboard2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5bf": {
		"code_points": {
			"base": "1f5bf",
			"non_fully_qualified": "1f5bf",
			"decimal": ""
		},
		"name": "black folder",
		"shortname": ":folder2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5c0": {
		"code_points": {
			"base": "1f5c0",
			"non_fully_qualified": "1f5c0",
			"decimal": ""
		},
		"name": "closed file folder",
		"shortname": ":closed_folder:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5c1": {
		"code_points": {
			"base": "1f5c1",
			"non_fully_qualified": "1f5c1",
			"decimal": ""
		},
		"name": "open file folder",
		"shortname": ":open_folder:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5c8": {
		"code_points": {
			"base": "1f5c8",
			"non_fully_qualified": "1f5c8",
			"decimal": ""
		},
		"name": "scribbled note",
		"shortname": ":note2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5d8": {
		"code_points": {
			"base": "1f5d8",
			"non_fully_qualified": "1f5d8",
			"decimal": ""
		},
		"name": "refresh circular arrows",
		"shortname": ":refresh:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5d9": {
		"code_points": {
			"base": "1f5d9",
			"non_fully_qualified": "1f5d9",
			"decimal": ""
		},
		"name": "cancellation x",
		"shortname": ":cancel:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5e2": {
		"code_points": {
			"base": "1f5e2",
			"non_fully_qualified": "1f5e2",
			"decimal": ""
		},
		"name": "sexy lips",
		"shortname": ":lips:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5e9": {
		"code_points": {
			"base": "1f5e9",
			"non_fully_qualified": "1f5e9",
			"decimal": ""
		},
		"name": "speech bubble",
		"shortname": ":speech_right:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5ec": {
		"code_points": {
			"base": "1f5ec",
			"non_fully_qualified": "1f5ec",
			"decimal": ""
		},
		"name": "left thought bubble",
		"shortname": ":thought_left:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5ed": {
		"code_points": {
			"base": "1f5ed",
			"non_fully_qualified": "1f5ed",
			"decimal": ""
		},
		"name": "right thought bubble",
		"shortname": ":thought_right:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f5ee": {
		"code_points": {
			"base": "1f5ee",
			"non_fully_qualified": "1f5ee",
			"decimal": ""
		},
		"name": "left anger bubble",
		"shortname": ":anger_left:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f61e-1f494": {
		"code_points": {
			"base": "1f61e-1f494",
			"non_fully_qualified": "1f61e-1f494",
			"decimal": ""
		},
		"name": "heartbroken face",
		"shortname": ":heartbroken:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6c6": {
		"code_points": {
			"base": "1f6c6",
			"non_fully_qualified": "1f6c6",
			"decimal": ""
		},
		"name": "generic warning triangle sign",
		"shortname": ":triangle_sign:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6c7": {
		"code_points": {
			"base": "1f6c7",
			"non_fully_qualified": "1f6c7",
			"decimal": ""
		},
		"name": "forbidden or no entry sign",
		"shortname": ":noentry:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6c8": {
		"code_points": {
			"base": "1f6c8",
			"non_fully_qualified": "1f6c8",
			"decimal": ""
		},
		"name": "information sign",
		"shortname": ":info:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f6ea": {
		"code_points": {
			"base": "1f6ea",
			"non_fully_qualified": "1f6ea",
			"fully_qualified": "1f6ea-fe0f",
			"decimal": "&#128746;"
		},
		"name": "North-East facing airplane",
		"shortname": ":airplane_ne:",
		"category": "travel",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["transportation", "plane", "travel", "vacation", "fly"]
	},
	"1f93b": {
		"code_points": {
			"base": "1f93b",
			"non_fully_qualified": "1f93b",
			"decimal": ""
		},
		"name": "modern penthatlon",
		"shortname": ":pentathlon:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93b-1f3fb": {
		"code_points": {
			"base": "1f93b-1f3fb",
			"non_fully_qualified": "1f93b-1f3fb",
			"decimal": ""
		},
		"name": "modern pentathlon light skin tone",
		"shortname": ":pentathlon_tone1:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93b-1f3fc": {
		"code_points": {
			"base": "1f93b-1f3fc",
			"non_fully_qualified": "1f93b-1f3fc",
			"decimal": ""
		},
		"name": "modern pentathlon medium light skin tone",
		"shortname": ":pentathlon_tone2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93b-1f3fd": {
		"code_points": {
			"base": "1f93b-1f3fd",
			"non_fully_qualified": "1f93b-1f3fd",
			"decimal": ""
		},
		"name": "modern pentathlon medium skin tone",
		"shortname": ":pentathlon_tone3:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93b-1f3fe": {
		"code_points": {
			"base": "1f93b-1f3fe",
			"non_fully_qualified": "1f93b-1f3fe",
			"decimal": ""
		},
		"name": "modern pentathlon medium dark skin tone",
		"shortname": ":pentathlon_tone4:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f93b-1f3ff": {
		"code_points": {
			"base": "1f93b-1f3ff",
			"non_fully_qualified": "1f93b-1f3ff",
			"decimal": ""
		},
		"name": "modern pentathlon dark skin tone",
		"shortname": ":pentathlon_tone5:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f946": {
		"code_points": {
			"base": "1f946",
			"non_fully_qualified": "1f946",
			"decimal": ""
		},
		"name": "rifle",
		"shortname": ":rifle:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f986-2640": {
		"code_points": {
			"base": "1f986-2640",
			"non_fully_qualified": "1f986-2640",
			"decimal": ""
		},
		"name": "female duck",
		"shortname": ":duckhen:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f986-2642": {
		"code_points": {
			"base": "1f986-2642",
			"non_fully_qualified": "1f986-2642",
			"decimal": ""
		},
		"name": "male duck",
		"shortname": ":drake:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f98c-1f6a8": {
		"code_points": {
			"base": "1f98c-1f6a8",
			"non_fully_qualified": "1f98c-1f6a8",
			"decimal": ""
		},
		"name": "Rudolph the Red-Nosed Reindeer",
		"shortname": ":rudolph:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"1f98c-2640": {
		"code_points": {
			"base": "1f98c-2640",
			"non_fully_qualified": "1f98c-2640",
			"decimal": ""
		},
		"name": "female deer",
		"shortname": ":doe:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":hind:"],
		"ascii": [],
		"keywords": []
	},
	"1f98c-2642": {
		"code_points": {
			"base": "1f98c-2642",
			"non_fully_qualified": "1f98c-2642",
			"decimal": ""
		},
		"name": "male deer",
		"shortname": ":buck:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":stag:"],
		"ascii": [],
		"keywords": []
	},
	"25a0": {
		"code_points": {
			"base": "25a0",
			"non_fully_qualified": "25a0",
			"decimal": ""
		},
		"name": "foreground color swatch",
		"shortname": ":ink:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"25a1": {
		"code_points": {
			"base": "25a1",
			"non_fully_qualified": "25a1",
			"decimal": ""
		},
		"name": "white color swatch",
		"shortname": ":argent:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":white:"],
		"ascii": [],
		"keywords": []
	},
	"25a4": {
		"code_points": {
			"base": "25a4",
			"non_fully_qualified": "25a4",
			"decimal": ""
		},
		"name": "blue color swatch",
		"shortname": ":azure:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":blue:"],
		"ascii": [],
		"keywords": []
	},
	"25a5": {
		"code_points": {
			"base": "25a5",
			"non_fully_qualified": "25a5",
			"decimal": ""
		},
		"name": "red color swatch",
		"shortname": ":gules:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":red:"],
		"ascii": [],
		"keywords": []
	},
	"25a6": {
		"code_points": {
			"base": "25a6",
			"non_fully_qualified": "25a6",
			"decimal": ""
		},
		"name": "black color swatch",
		"shortname": ":sable:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":black:"],
		"ascii": [],
		"keywords": []
	},
	"25a7": {
		"code_points": {
			"base": "25a7",
			"non_fully_qualified": "25a7",
			"decimal": ""
		},
		"name": "green color swatch",
		"shortname": ":vert:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":green:"],
		"ascii": [],
		"keywords": []
	},
	"25a8": {
		"code_points": {
			"base": "25a8",
			"non_fully_qualified": "25a8",
			"decimal": ""
		},
		"name": "purple color swatch",
		"shortname": ":purpure:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":purple:"],
		"ascii": [],
		"keywords": []
	},
	"25a9": {
		"code_points": {
			"base": "25a9",
			"non_fully_qualified": "25a9",
			"decimal": ""
		},
		"name": "grey color swatch",
		"shortname": ":grey:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [":gray:"],
		"ascii": [],
		"keywords": []
	},
	"2605": {
		"code_points": {
			"base": "2605",
			"non_fully_qualified": "2605",
			"decimal": ""
		},
		"name": "solid star",
		"shortname": ":3d_star:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2607": {
		"code_points": {
			"base": "2607",
			"non_fully_qualified": "2607",
			"decimal": ""
		},
		"name": "lightning symbol",
		"shortname": ":thunderbolt:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2608": {
		"code_points": {
			"base": "2608",
			"non_fully_qualified": "2608",
			"decimal": ""
		},
		"name": "thunderstorm symbol",
		"shortname": ":thunderstorm:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2609": {
		"code_points": {
			"base": "2609",
			"non_fully_qualified": "2609",
			"decimal": ""
		},
		"name": "sun symbol",
		"shortname": ":sol:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"260f": {
		"code_points": {
			"base": "260f",
			"non_fully_qualified": "260f",
			"decimal": ""
		},
		"name": "white telephone",
		"shortname": ":telephone2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2610": {
		"code_points": {
			"base": "2610",
			"non_fully_qualified": "2610",
			"decimal": ""
		},
		"name": "empty ballot box",
		"shortname": ":ballot_box_empty:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2612": {
		"code_points": {
			"base": "2612",
			"non_fully_qualified": "2612",
			"decimal": ""
		},
		"name": "crossed ballot box",
		"shortname": ":ballot_box_with_cross:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2616": {
		"code_points": {
			"base": "2616",
			"non_fully_qualified": "2616",
			"decimal": ""
		},
		"name": "white shogi piece",
		"shortname": ":shogi_white:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2617": {
		"code_points": {
			"base": "2617",
			"non_fully_qualified": "2617",
			"decimal": ""
		},
		"name": "black shogi piece",
		"shortname": ":shogi_black:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261c": {
		"code_points": {
			"base": "261c",
			"non_fully_qualified": "261c",
			"decimal": ""
		},
		"name": "right hand pointing left",
		"shortname": ":pointer_left:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261c-1f3fb": {
		"code_points": {
			"base": "261c-1f3fb",
			"non_fully_qualified": "261c-1f3fb",
			"decimal": ""
		},
		"name": "right hand pointing left light skin tone",
		"shortname": ":pointer_left_tone1:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261c-1f3fc": {
		"code_points": {
			"base": "261c-1f3fc",
			"non_fully_qualified": "261c-1f3fc",
			"decimal": ""
		},
		"name": "right hand pointing left medium light skin tone",
		"shortname": ":pointer_left_tone2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261c-1f3fd": {
		"code_points": {
			"base": "261c-1f3fd",
			"non_fully_qualified": "261c-1f3fd",
			"decimal": ""
		},
		"name": "right hand pointing left medium skin tone",
		"shortname": ":pointer_left_tone3:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261c-1f3fe": {
		"code_points": {
			"base": "261c-1f3fe",
			"non_fully_qualified": "261c-1f3fe",
			"decimal": ""
		},
		"name": "right hand pointing left medium dark skin tone",
		"shortname": ":pointer_left_tone4:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261c-1f3ff": {
		"code_points": {
			"base": "261c-1f3ff",
			"non_fully_qualified": "261c-1f3ff",
			"decimal": ""
		},
		"name": "right hand pointing left dark skin tone",
		"shortname": ":pointer_left_tone5:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261e": {
		"code_points": {
			"base": "261e",
			"non_fully_qualified": "261e",
			"decimal": ""
		},
		"name": "left hand pointing right",
		"shortname": ":pointer_right:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261e-1f3fb": {
		"code_points": {
			"base": "261e-1f3fb",
			"non_fully_qualified": "261e-1f3fb",
			"decimal": ""
		},
		"name": "left hand pointing right light skin tone",
		"shortname": ":pointer_right_tone1:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261e-1f3fc": {
		"code_points": {
			"base": "261e-1f3fc",
			"non_fully_qualified": "261e-1f3fc",
			"decimal": ""
		},
		"name": "left hand pointing right medium light skin tone",
		"shortname": ":pointer_right_tone2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261e-1f3fd": {
		"code_points": {
			"base": "261e-1f3fd",
			"non_fully_qualified": "261e-1f3fd",
			"decimal": ""
		},
		"name": "left hand pointing right medium skin tone",
		"shortname": ":pointer_right_tone3:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261e-1f3fe": {
		"code_points": {
			"base": "261e-1f3fe",
			"non_fully_qualified": "261e-1f3fe",
			"decimal": ""
		},
		"name": "left hand pointing right medium dark skin tone",
		"shortname": ":pointer_right_tone4:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261e-1f3ff": {
		"code_points": {
			"base": "261e-1f3ff",
			"non_fully_qualified": "261e-1f3ff",
			"decimal": ""
		},
		"name": "left hand pointing right dark skin tone",
		"shortname": ":pointer_left_tone5:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261f": {
		"code_points": {
			"base": "261f",
			"non_fully_qualified": "261f",
			"decimal": ""
		},
		"name": "right hand pointing down",
		"shortname": ":pointer_down:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261f-1f3fb": {
		"code_points": {
			"base": "261f-1f3fb",
			"non_fully_qualified": "261f-1f3fb",
			"decimal": ""
		},
		"name": "right hand pointing down light skin tone",
		"shortname": ":pointer_down_tone1:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261f-1f3fc": {
		"code_points": {
			"base": "261f-1f3fc",
			"non_fully_qualified": "261f-1f3fc",
			"decimal": ""
		},
		"name": "right hand pointing down medium light skin tone",
		"shortname": ":pointer_down_tone2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261f-1f3fd": {
		"code_points": {
			"base": "261f-1f3fd",
			"non_fully_qualified": "261f-1f3fd",
			"decimal": ""
		},
		"name": "right hand pointing down medium skin tone",
		"shortname": ":pointer_down_tone3:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261f-1f3fe": {
		"code_points": {
			"base": "261f-1f3fe",
			"non_fully_qualified": "261f-1f3fe",
			"decimal": ""
		},
		"name": "right hand pointing down medium dark skin tone",
		"shortname": ":pointer_down_tone4:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"261f-1f3ff": {
		"code_points": {
			"base": "261f-1f3ff",
			"non_fully_qualified": "261f-1f3ff",
			"decimal": ""
		},
		"name": "right hand pointing down dark skin tone",
		"shortname": ":pointer_down_tone5:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2621": {
		"code_points": {
			"base": "2621",
			"non_fully_qualified": "2621",
			"decimal": ""
		},
		"name": "caution sign",
		"shortname": ":caution:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2624": {
		"code_points": {
			"base": "2624",
			"non_fully_qualified": "2624",
			"decimal": ""
		},
		"name": "caduceus",
		"shortname": ":caduceus:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2627": {
		"code_points": {
			"base": "2627",
			"non_fully_qualified": "2627",
			"decimal": ""
		},
		"name": "Chi Rho",
		"shortname": ":chirho:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2628": {
		"code_points": {
			"base": "2628",
			"non_fully_qualified": "2628",
			"decimal": ""
		},
		"name": "cross of Lorraine",
		"shortname": ":lorraine:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2629": {
		"code_points": {
			"base": "2629",
			"non_fully_qualified": "2629",
			"decimal": ""
		},
		"name": "cros of Jerusalem",
		"shortname": ":jerusalem:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"262d": {
		"code_points": {
			"base": "262d",
			"non_fully_qualified": "262d",
			"decimal": ""
		},
		"name": "hammer and sickle",
		"shortname": ":hammer_sickle:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["communism", "socialism"]
	},
	"2630": {
		"code_points": {
			"base": "2630",
			"non_fully_qualified": "2630",
			"decimal": ""
		},
		"name": "trigram for heaven",
		"shortname": ":heaven_trigram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2631": {
		"code_points": {
			"base": "2631",
			"non_fully_qualified": "2631",
			"decimal": ""
		},
		"name": "trigram for lake",
		"shortname": ":lake_trigram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2632": {
		"code_points": {
			"base": "2632",
			"non_fully_qualified": "2632",
			"decimal": ""
		},
		"name": "trigram for fire",
		"shortname": ":fire_trigram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2633": {
		"code_points": {
			"base": "2633",
			"non_fully_qualified": "2633",
			"decimal": ""
		},
		"name": "trigram for thunder",
		"shortname": ":thunder_trigram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2634": {
		"code_points": {
			"base": "2634",
			"non_fully_qualified": "2634",
			"decimal": ""
		},
		"name": "trigram for wind",
		"shortname": ":wind_trigram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2635": {
		"code_points": {
			"base": "2635",
			"non_fully_qualified": "2635",
			"decimal": ""
		},
		"name": "trigram for water",
		"shortname": ":water_trigram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2636": {
		"code_points": {
			"base": "2636",
			"non_fully_qualified": "2636",
			"decimal": ""
		},
		"name": "trigram for mountain",
		"shortname": ":mountain_trigram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2637": {
		"code_points": {
			"base": "2637",
			"non_fully_qualified": "2637",
			"decimal": ""
		},
		"name": "trigram for earth",
		"shortname": ":earth_trigram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"263b": {
		"code_points": {
			"base": "263b",
			"non_fully_qualified": "263b",
			"decimal": ""
		},
		"name": "solid smiling face",
		"shortname": ":smiler:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2661": {
		"code_points": {
			"base": "2661",
			"non_fully_qualified": "2661",
			"decimal": ""
		},
		"name": "hearts card suit alternate",
		"shortname": ":hearts2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2662": {
		"code_points": {
			"base": "2662",
			"non_fully_qualified": "2662",
			"decimal": ""
		},
		"name": "diamonds card suit alternate",
		"shortname": ":diamonds2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2664": {
		"code_points": {
			"base": "2664",
			"non_fully_qualified": "2664",
			"decimal": ""
		},
		"name": "spades card suit alternate",
		"shortname": ":spades2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2667": {
		"code_points": {
			"base": "2667",
			"non_fully_qualified": "2667",
			"decimal": ""
		},
		"name": "clubs card suit alternate",
		"shortname": ":clubs2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2670": {
		"code_points": {
			"base": "2670",
			"non_fully_qualified": "2670",
			"decimal": ""
		},
		"name": "west syriac cross",
		"shortname": ":syriac_west:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2671": {
		"code_points": {
			"base": "2671",
			"non_fully_qualified": "2671",
			"decimal": ""
		},
		"name": "east syriac cross",
		"shortname": ":syriac_east:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2672": {
		"code_points": {
			"base": "2672",
			"non_fully_qualified": "2672",
			"decimal": ""
		},
		"name": "universal recycling symbol",
		"shortname": ":recycling:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"267c": {
		"code_points": {
			"base": "267c",
			"non_fully_qualified": "267c",
			"decimal": ""
		},
		"name": "recycled paper symbol",
		"shortname": ":recycled_paper:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"267d": {
		"code_points": {
			"base": "267d",
			"non_fully_qualified": "267d",
			"decimal": ""
		},
		"name": "partially recycled paper symbol",
		"shortname": ":recycled_paper2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2680": {
		"code_points": {
			"base": "2680",
			"non_fully_qualified": "2680",
			"decimal": ""
		},
		"name": "game die 1",
		"shortname": ":die1:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2681": {
		"code_points": {
			"base": "2681",
			"non_fully_qualified": "2681",
			"decimal": ""
		},
		"name": "game die 2",
		"shortname": ":die2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2682": {
		"code_points": {
			"base": "2682",
			"non_fully_qualified": "2682",
			"decimal": ""
		},
		"name": "game die 3",
		"shortname": ":die3:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2683": {
		"code_points": {
			"base": "2683",
			"non_fully_qualified": "2683",
			"decimal": ""
		},
		"name": "game die 4",
		"shortname": ":die4:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2684": {
		"code_points": {
			"base": "2684",
			"non_fully_qualified": "2684",
			"decimal": ""
		},
		"name": "game die 5",
		"shortname": ":die5:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2685": {
		"code_points": {
			"base": "2685",
			"non_fully_qualified": "2685",
			"decimal": ""
		},
		"name": "game die 6",
		"shortname": ":die 6:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2686": {
		"code_points": {
			"base": "2686",
			"non_fully_qualified": "2686",
			"decimal": ""
		},
		"name": "white Go piece with dot",
		"shortname": ":go_dot_white:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2687": {
		"code_points": {
			"base": "2687",
			"non_fully_qualified": "2687",
			"decimal": ""
		},
		"name": "white Go piece with dots",
		"shortname": ":go_dots_white:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2688": {
		"code_points": {
			"base": "2688",
			"non_fully_qualified": "2688",
			"decimal": ""
		},
		"name": "black Go piece with dot",
		"shortname": ":go_dot_black:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2689": {
		"code_points": {
			"base": "2689",
			"non_fully_qualified": "2689",
			"decimal": ""
		},
		"name": "black Go piece with dots",
		"shortname": ":go_dots_black:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"268a": {
		"code_points": {
			"base": "268a",
			"non_fully_qualified": "268a",
			"decimal": ""
		},
		"name": "monogram for yang",
		"shortname": ":yang_monogram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"268b": {
		"code_points": {
			"base": "268b",
			"non_fully_qualified": "268b",
			"decimal": ""
		},
		"name": "monogram for yin",
		"shortname": ":yin_trigram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"268c": {
		"code_points": {
			"base": "268c",
			"non_fully_qualified": "268c",
			"decimal": ""
		},
		"name": "digram for greater yang",
		"shortname": ":greater_yang_digram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"268d": {
		"code_points": {
			"base": "268d",
			"non_fully_qualified": "268d",
			"decimal": ""
		},
		"name": "digram for lesser yin",
		"shortname": ":lesser_yin_digram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"268e": {
		"code_points": {
			"base": "268e",
			"non_fully_qualified": "268e",
			"decimal": ""
		},
		"name": "digram for lesser yang",
		"shortname": ":lesser_yang_digram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"268f": {
		"code_points": {
			"base": "268f",
			"non_fully_qualified": "268f",
			"decimal": ""
		},
		"name": "digram for greater yin",
		"shortname": ":greater_yin_digram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2690": {
		"code_points": {
			"base": "2690",
			"non_fully_qualified": "2690",
			"decimal": ""
		},
		"name": "white flag",
		"shortname": ":white_flag:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2691": {
		"code_points": {
			"base": "2691",
			"non_fully_qualified": "2691",
			"decimal": ""
		},
		"name": "black flag",
		"shortname": ":black_flag:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2695": {
		"code_points": {
			"base": "2695",
			"non_fully_qualified": "2695",
			"decimal": ""
		},
		"name": "staff of Aesculapius",
		"shortname": ":aesculap:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2698": {
		"code_points": {
			"base": "2698",
			"non_fully_qualified": "2698",
			"decimal": ""
		},
		"name": "flower symbol",
		"shortname": ":botany:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"269a": {
		"code_points": {
			"base": "269a",
			"non_fully_qualified": "269a",
			"decimal": ""
		},
		"name": "staff of Hermes",
		"shortname": ":hermes:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26c6": {
		"code_points": {
			"base": "26c6",
			"non_fully_qualified": "26c6",
			"decimal": ""
		},
		"name": "rain drops",
		"shortname": ":raindrops:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26c7": {
		"code_points": {
			"base": "26c7",
			"non_fully_qualified": "26c7",
			"decimal": ""
		},
		"name": "solid snowman",
		"shortname": ":snowman3:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26c9": {
		"code_points": {
			"base": "26c9",
			"non_fully_qualified": "26c9",
			"decimal": ""
		},
		"name": "turned white shogi piece",
		"shortname": ":shogi_turned_white:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26ca": {
		"code_points": {
			"base": "26ca",
			"non_fully_qualified": "26ca",
			"decimal": ""
		},
		"name": "turned black shogi piece",
		"shortname": ":shogi_turned_black:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26cb": {
		"code_points": {
			"base": "26cb",
			"non_fully_qualified": "26cb",
			"decimal": ""
		},
		"name": "outlined diamond sign",
		"shortname": ":diamond_sign:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26db": {
		"code_points": {
			"base": "26db",
			"non_fully_qualified": "26db",
			"decimal": ""
		},
		"name": "triangle yield sign",
		"shortname": ":yield:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26dd": {
		"code_points": {
			"base": "26dd",
			"non_fully_qualified": "26dd",
			"decimal": ""
		},
		"name": "squared saltire sign",
		"shortname": ":saltire_sign:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26de": {
		"code_points": {
			"base": "26de",
			"non_fully_qualified": "26de",
			"decimal": ""
		},
		"name": "squared prohibition sign",
		"shortname": ":prohibited:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26e4": {
		"code_points": {
			"base": "26e4",
			"non_fully_qualified": "26e4",
			"decimal": ""
		},
		"name": "pentagram",
		"shortname": ":pentagram:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26e7": {
		"code_points": {
			"base": "26e7",
			"non_fully_qualified": "26e7",
			"decimal": ""
		},
		"name": "turned pentagram",
		"shortname": ":pentagram_turned:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"26fe": {
		"code_points": {
			"base": "26fe",
			"non_fully_qualified": "26fe",
			"decimal": ""
		},
		"name": "coffe cup sign",
		"shortname": ":cafe:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"270e": {
		"code_points": {
			"base": "270e",
			"non_fully_qualified": "270e",
			"decimal": ""
		},
		"name": "lower right pencil",
		"shortname": ":pencil4:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2710": {
		"code_points": {
			"base": "2710",
			"non_fully_qualified": "2710",
			"decimal": ""
		},
		"name": "upper right pencil",
		"shortname": ":pencil5:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"2765": {
		"code_points": {
			"base": "2765",
			"non_fully_qualified": "2765",
			"fully_qualified": "2765-fe0f",
			"decimal": "&#10085;"
		},
		"name": "heart bullet",
		"shortname": ":heart_bullet:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["love", "symbol"]
	},
	"2b95": {
		"code_points": {
			"base": "2b95",
			"non_fully_qualified": "2b95",
			"decimal": ""
		},
		"name": "right arrow alternative",
		"shortname": ":arrow_right2:",
		"category": "",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": []
	},
	"0023": {
		"code_points": {
			"base": "0023",
			"non_fully_qualified": "0023",
			"fully_qualified": "0023-fe0f",
			"decimal": "#"
		},
		"name": "number sign",
		"shortname": ":number_sign:",
		"category": "symbols",
		"emoji_order": "2106",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "symbol"]
	},
	"002a": {
		"code_points": {
			"base": "002a",
			"non_fully_qualified": "002a",
			"fully_qualified": "002a-fe0f",
			"decimal": "*"
		},
		"name": "asterisk",
		"shortname": ":text_asterisk:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["symbol"]
	},
	"0030": {
		"code_points": {
			"base": "0030",
			"non_fully_qualified": "0030",
			"fully_qualified": "0030-fe0f",
			"decimal": "0"
		},
		"name": "digit zero",
		"shortname": ":0:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0031": {
		"code_points": {
			"base": "0031",
			"non_fully_qualified": "0031",
			"fully_qualified": "0031-fe0f",
			"decimal": "1"
		},
		"name": "digit one",
		"shortname": ":1:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0032": {
		"code_points": {
			"base": "0032",
			"non_fully_qualified": "0032",
			"fully_qualified": "0032-fe0f",
			"decimal": "2"
		},
		"name": "digit two",
		"shortname": ":2:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0033": {
		"code_points": {
			"base": "0033",
			"non_fully_qualified": "0033",
			"fully_qualified": "0033-fe0f",
			"decimal": "3"
		},
		"name": "digit three",
		"shortname": ":3:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0034": {
		"code_points": {
			"base": "0034",
			"non_fully_qualified": "0034",
			"fully_qualified": "0034-fe0f",
			"decimal": "4"
		},
		"name": "digit four",
		"shortname": ":4:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0035": {
		"code_points": {
			"base": "0035",
			"non_fully_qualified": "0035",
			"fully_qualified": "0035-fe0f",
			"decimal": "5"
		},
		"name": "digit five",
		"shortname": ":5:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0036": {
		"code_points": {
			"base": "0036",
			"non_fully_qualified": "0036",
			"fully_qualified": "0036-fe0f",
			"decimal": "6"
		},
		"name": "digit six",
		"shortname": ":6:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0037": {
		"code_points": {
			"base": "0037",
			"non_fully_qualified": "0037",
			"fully_qualified": "0037-fe0f",
			"decimal": "7"
		},
		"name": "digit seven",
		"shortname": ":7:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0038": {
		"code_points": {
			"base": "0038",
			"non_fully_qualified": "0038",
			"fully_qualified": "0038-fe0f",
			"decimal": "8"
		},
		"name": "digit eight",
		"shortname": ":8:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	},
	"0039": {
		"code_points": {
			"base": "0039",
			"non_fully_qualified": "0039",
			"fully_qualified": "0039-fe0f",
			"decimal": "9"
		},
		"name": "digit nine",
		"shortname": ":9:",
		"category": "symbols",
		"emoji_order": "",
		"shortname_alternates": [],
		"ascii": [],
		"keywords": ["number", "math", "symbol"]
	}
}




func _on_Hide_meta_clicked(meta):
	visible = false
	pass # Replace with function body.
