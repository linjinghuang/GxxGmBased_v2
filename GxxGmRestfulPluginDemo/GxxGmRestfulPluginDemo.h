#ifndef _GxxGmRestfulPluginDemo_H_
#define _GxxGmRestfulPluginDemo_H_

#include "GxxGmAbstractPlugin.h"
#include "Poco/ClassLibrary.h"

class GxxGmRestfulPluginDemo : public GxxGmAbstractPlugin
{
public:
	GxxGmRestfulPluginDemo();
	virtual ~GxxGmRestfulPluginDemo();

public:
	virtual int Initialize(GxxGmLoggerObject *logger);
	virtual int Uninitialize();

public:
	virtual int RequestHandler(Poco::Net::HTTPServerRequest& request, Poco::Net::HTTPServerResponse& response);

private:
	void WriteLog(std::string log, int log_level = LOG_LEVEL_INFO);
};

#endif
