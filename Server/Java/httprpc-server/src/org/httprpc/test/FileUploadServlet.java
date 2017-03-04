/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.httprpc.test;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

import org.httprpc.DispatcherServlet;
import org.httprpc.RequestMethod;

/**
 * File upload servlet.
 */
@WebServlet(urlPatterns={"/upload/*"}, loadOnStartup=1)
@MultipartConfig
public class FileUploadServlet extends DispatcherServlet {
    private static final long serialVersionUID = 0;

    @RequestMethod("POST")
    public long upload(URL file) throws IOException {
        long bytes = 0;

        if (file != null) {
            try (InputStream inputStream = file.openStream()) {
                while (inputStream.read() != -1) {
                    bytes++;
                }
            }
        }

        return bytes;
    }

    @RequestMethod("POST")
    public long upload(List<URL> files) throws IOException {
        long bytes = 0;

        for (URL file : files) {
            try (InputStream inputStream = file.openStream()) {
                while (inputStream.read() != -1) {
                    bytes++;
                }
            }
        }

        return bytes;
    }
}
