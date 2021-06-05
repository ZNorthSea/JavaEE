package com.study.exception;

/**
 * 自定义异常 - 用户相关的异常类
 */
public class CustomerException extends Exception {
	
	private static final long serialVersionUID = -292194325797973735L;

	public CustomerException() {
		super();
	}

	public CustomerException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public CustomerException(String message, Throwable cause) {
		super(message, cause);
	}

	public CustomerException(String message) {
		super(message);
	}

	public CustomerException(Throwable cause) {
		super(cause);
	}
	
	
}
