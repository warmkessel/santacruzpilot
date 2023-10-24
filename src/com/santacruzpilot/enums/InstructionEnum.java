package com.santacruzpilot.enums;

import java.util.HashMap;
import java.util.Map;
	

	public enum InstructionEnum {
		DEFAULT("default", "Santa Cruz Pilot is commited to your Flight Instruction Journey"),
		INSTRUCTION("instruction", "Best Instruction in "),
		FLIGHT("flight", "Best Flight Instruction in ")
		;

		private static final Map<String, InstructionEnum> BY_NAME = new HashMap<>();
		static {
			for (InstructionEnum lang : values()) {
				BY_NAME.put(lang.name, lang);
			}
		}
		public final String name;
		public final String message;
		
		InstructionEnum(String name, String message) {
			this.name = name;
			this.message = message;	
		}
		public static InstructionEnum findByName(String name) {
			InstructionEnum lang = BY_NAME.getOrDefault(name.toLowerCase(), DEFAULT);
			
			return lang;
		}
	}